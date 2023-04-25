import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

import 'core/router/router.dart';
import 'core/service_locator.dart' as sl;

Future<void> main() async {
  sl.init();
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  runApp(
    EasyLocalization(
      supportedLocales: const [Locale('pl', 'PL')],
      path: 'assets/translations',
      fallbackLocale: const Locale('pl', 'PL'),
      child: MainApp(),
    ),
  );
}

class MainApp extends StatelessWidget {
  MainApp({super.key});

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerDelegate: _appRouter.delegate(),
      routeInformationParser: _appRouter.defaultRouteParser(),
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      theme: ThemeData.light().copyWith(
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            backgroundColor: Colors.red.shade800,
          ),
        ),
      ),
    );
  }
}
