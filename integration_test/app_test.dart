import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:rg_rek/core/router/router.dart';
import 'package:rg_rek/features/events/data/data_sources/remote/client/event_client.dart';
import 'package:rg_rek/features/events/presentation/enums/event_category_enum.dart';

import '../test/mock_data_objects/mock_models.dart';
import 'mock_service_locator.dart' as msl;

import 'app_test.mocks.dart';

@GenerateMocks([EventClient])
void main() {
  setUpAll(
    () {
      var mockClient = MockEventClient();

      when(mockClient.getEventsByCategory(any)).thenAnswer(
        (_) async => tResponseModel,
      );

      msl.mockInit();
      msl.clientInit(mockClient);
    },
  );

  Widget createWidgetUnderTest() {
    final appRouter = AppRouter();

    return MaterialApp.router(
      routerDelegate: appRouter.delegate(),
      routeInformationParser: appRouter.defaultRouteParser(),
    );
  }

  testWidgets(
    'has event',
    (widgetTester) async {
      await widgetTester.pumpWidget(createWidgetUnderTest());
      await widgetTester.pumpAndSettle();

      await widgetTester.tap(find.byKey(const Key('my_tab')));
      await widgetTester.pumpAndSettle();

      expect(find.text(EventCategory.scoocer.name.tr()), findsWidgets);
    },
  );

  // testWidgets(
  //   'goes to quick search page after search clicked',
  //   (widgetTester) async {
  //     FlutterError.onError = ignoreOverflowErrors;

  //     await widgetTester.pumpWidget(createWidgetUnderTest());
  //     await widgetTester.pumpAndSettle();

  //     await widgetTester.tap(find.byKey(const Key('search_box')));
  //     await widgetTester.pumpAndSettle();

  //     expect(find.byType(SearchWidget), findsOneWidget);
  //   },
  // );
}
