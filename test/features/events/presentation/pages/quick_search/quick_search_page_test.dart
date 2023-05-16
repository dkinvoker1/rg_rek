import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:rg_rek/core/widgets/loading_widget.dart.dart';
import 'package:rg_rek/features/events/presentation/pages/quick_search/bloc/quick_search_bloc.dart';
import 'package:rg_rek/features/events/presentation/pages/quick_search/quick_search_page.dart';
import 'package:rg_rek/features/events/presentation/pages/quick_search/widgets/header_widget.dart';
import 'package:rg_rek/features/events/presentation/pages/quick_search/widgets/search_widget.dart';
import 'package:rg_rek/core/service_locator.dart' as sl;

import 'package:bloc_test/bloc_test.dart';
import 'package:rg_rek/features/events/presentation/widgets/event_card_widget/event_card_widget.dart';

import '../../../../../mock_data_objects/mock_bloc_state_objects.dart';
import '../../../../../test_helper.dart';

class MockQuickSearchBloc extends MockBloc<QuickSearchEvent, QuickSearchState>
    implements QuickSearchBloc {}

void main() {
  setUpAll(() => sl.init());

  final MockQuickSearchBloc mockBloc = MockQuickSearchBloc();

  Widget createWidgetUnderTest() {
    return MaterialApp(
      home: BlocProvider<QuickSearchBloc>(
        create: (context) => mockBloc,
        child: const QuickSearchView(),
      ),
    );
  }

  void setUpMockBlocStateInitial() => whenListen<QuickSearchState>(
        mockBloc,
        Stream.fromIterable(
          [
            const QuickSearchState.initial(),
          ],
        ),
        initialState: const QuickSearchState.initial(),
      );

  testWidgets(
    'has header widget',
    (widgetTester) async {
      setUpMockBlocStateInitial();

      await widgetTester.pumpWidget(createWidgetUnderTest());

      expect(find.byType(HeaderWidget), findsOneWidget);
    },
  );

  testWidgets(
    'has search widget',
    (widgetTester) async {
      setUpMockBlocStateInitial();

      await widgetTester.pumpWidget(createWidgetUnderTest());

      expect(find.byType(SearchWidget), findsOneWidget);
    },
  );

  void setUpMockBlocStateLoading() => whenListen<QuickSearchState>(
        mockBloc,
        Stream.fromIterable(
          [
            const QuickSearchState.loading(),
          ],
        ),
        initialState: const QuickSearchState.initial(),
      );

  testWidgets(
    'has loading widget',
    (widgetTester) async {
      setUpMockBlocStateLoading();

      await widgetTester.pumpWidget(createWidgetUnderTest());

      await widgetTester.pump();

      expect(find.byIcon(Icons.sync), findsOneWidget);
      expect(find.text('give_us_a_sec'.tr()), findsOneWidget);
      expect(find.text('searching_in_database'.tr()), findsOneWidget);
    },
  );

  void setUpMockBlocStateLoaded() => whenListen<QuickSearchState>(
        mockBloc,
        Stream.fromIterable(
          [
            QuickSearchState.loaded(tGameCardDataList),
          ],
        ),
        initialState: const QuickSearchState.initial(),
      );

  testWidgets(
    'has list of cards widget',
    (widgetTester) async {
      FlutterError.onError = ignoreOverflowErrors;

      setUpMockBlocStateLoaded();

      await widgetTester.pumpWidget(createWidgetUnderTest());

      await widgetTester.pumpAndSettle();

      for (var element in tGameCardDataList) {
        expect(find.text(element.category3Name), findsOneWidget);
      }
    },
  );
}
