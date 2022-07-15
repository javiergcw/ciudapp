import 'package:flutter/material.dart';
import 'core/routes/app_routes.dart';

void main() {
  runApp(
    const MaterialApp(
      home: CiudApp(),
      //ProgressObserver(),
      //BeInControl()
      //EasyAcces(),
    ),
  );
}

class CiudApp extends StatelessWidget {
  const CiudApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routeInformationParser: router.routeInformationParser,
      routeInformationProvider: router.routeInformationProvider,
      routerDelegate: router.routerDelegate,
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
    );
  }
}
