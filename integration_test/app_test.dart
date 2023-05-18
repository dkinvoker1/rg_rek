import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:rg_rek/core/router/router.dart';
import 'package:rg_rek/features/events/presentation/pages/quick_search/widgets/widgets.dart';
import 'package:rg_rek/core/service_locator.dart' as sl;

import '../test/test_helper.dart';

void main() {
  setUpAll(() => sl.init());

  Widget createWidgetUnderTest() {
    final appRouter = AppRouter();

    return MaterialApp.router(
      routerDelegate: appRouter.delegate(),
      routeInformationParser: appRouter.defaultRouteParser(),
    );
  }

  testWidgets(
    'goes to quick search page after search clicked',
    (widgetTester) async {
      FlutterError.onError = ignoreOverflowErrors;
      
      await widgetTester.pumpWidget(createWidgetUnderTest());
      await widgetTester.pumpAndSettle();

      await widgetTester.tap(find.byKey(const Key('search_box')));
      await widgetTester.pumpAndSettle();

      expect(find.byType(SearchWidget), findsOneWidget);
    },
  );
}
