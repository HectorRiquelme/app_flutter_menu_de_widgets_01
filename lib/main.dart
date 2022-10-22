import 'package:flutter/material.dart';
import 'package:flutter_menu_de_widgets_01/router/app_router.dart';
import 'screens/screens.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.initialRoute,
      routes: AppRoutes.getAppRoutes(),
      onGenerateRoute: (settings) => AppRoutes.myOnGenerateRoute(settings),
    );
  }
}
