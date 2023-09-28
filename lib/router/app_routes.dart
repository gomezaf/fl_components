import 'package:fl_components/models/models.dart';
import 'package:flutter/material.dart';

import 'package:fl_components/screens/screens.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static final menuOptions = <MenuOption>{
    MenuOption(
        icon: Icons.home,
        name: 'Home Screen',
        route: 'home',
        screen: const HomeScreen()),
    MenuOption(
        icon: Icons.list,
        name: 'Listview1 Screen',
        route: 'listview1',
        screen: const Listview1Screen()),
    MenuOption(
        icon: Icons.view_list,
        name: 'Listview2 Screen',
        route: 'listview2',
        screen: const Listview2Screen()),
    MenuOption(
        icon: Icons.add_alert_outlined,
        name: 'Alert Screen',
        route: 'alert',
        screen: const AlertScreen()),
    MenuOption(
        icon: Icons.card_membership_outlined,
        name: 'Card Screen',
        route: 'card',
        screen: const CardScreen())
  };

  static Map<String, Widget Function(BuildContext)> routes = {
    'home': (BuildContext context) => const HomeScreen(),
    'listview1': (BuildContext context) => const Listview1Screen(),
    'listview2': (BuildContext context) => const Listview2Screen(),
    'alert': (BuildContext context) => const AlertScreen(),
    'card': (BuildContext context) => const CardScreen(),
  };

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) => const AlertScreen(),
    );
  }
}
