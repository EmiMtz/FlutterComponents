import 'package:fl_components/models/menu_option.dart';
import 'package:fl_components/screens/screens.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static final menuOptions = <MenuOption>[
    //TODO: borrar home
    // MenuOption(route: 'home', icon: Icons.home, name: 'Home Screen', screen: const HomeScreen()),
    MenuOption(route: 'Listview1', icon: Icons.list_alt, name: 'Listview tipo 1', screen: const ListView1Screen()),
    MenuOption(route: 'Listview2', icon: Icons.list, name: 'Listview tipo 2', screen: const ListView2Screen()),
    MenuOption(route: 'alert', icon: Icons.add_alert_outlined, name: 'Alertas', screen: const AlertScreen()),
    MenuOption(route: 'card', icon: Icons.card_membership, name: 'Tarjetas - Cards', screen: const CardScreen()),
    MenuOption(route: 'avatar', icon: Icons.supervised_user_circle_outlined, name: 'Circle Avatar', screen: const AvatarScreen()),
    MenuOption(route: 'animated', icon: Icons.play_circle_outline_rounded, name: 'Animated Container', screen: const AnimatedScreen()),
    MenuOption(route: 'inputs', icon: Icons.input_rounded, name: 'Text Inputs', screen: const InputScreen()),
    MenuOption(route: 'sliders', icon: Icons.slow_motion_video_rounded, name: 'Sliders && Checks', screen: const SliderScreen()),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {

    Map<String, Widget Function(BuildContext)> appRoutes = {};

    appRoutes.addAll({ 'home' : (BuildContext context) => const HomeScreen()});

    for (final option in menuOptions) {
      appRoutes.addAll({ option.route: (BuildContext context) => option.screen });
    }

    return appRoutes;
  }
  // static Map<String, Widget Function(BuildContext)> routes = {
  //   'home': (BuildContext context) => const HomeScreen(),
  //   'ListViewOne': (BuildContext context) => const ListView1Screen(),
  //   'ListViewTwo': (BuildContext context) => const ListView2Screen(),
  //   'alert': (BuildContext context) => const AlertScreen(),
  //   'card': (BuildContext context) => const CardScreen(),
  // };

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) => const AlertScreen(),
    );
  }
}