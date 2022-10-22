import 'package:flutter/material.dart';
import 'package:flutter_menu_de_widgets_01/screens/screens.dart';
import 'package:flutter_menu_de_widgets_01/models/models.dart';

class AppRoutes {
  static const String initialRoute = 'home';

  static final menuOption = <MenuOption>[
    MenuOption(
        route: 'missing_screen',
        icon: Icons.supervised_user_circle_outlined,
        name: 'widget no encontrado',
        screen: const MissingWidget()),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    appRoutes
        .addAll({'home': (BuildContext context) => const ListViewPrincipal()});

    for (final option in menuOption) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }

    return appRoutes;
  }

  static Route<dynamic> myOnGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(builder: (context) => const MissingWidget());
  }
  
}
