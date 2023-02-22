import 'package:flutter/material.dart';
import 'package:fl_components/models/models.dart';

import 'package:fl_components/screens/screens.dart';

class AppRouter{
    static const initialRoute = 'home';

  static final menuOptions = <MenuOption>[
    // TODO: borrar home
    //MenuOption(route: 'home', name: 'Home Screen', screen: const HomeScreen(), icon: Icons.home_max_sharp ),
    //MenuOption(route: 'listview1', name: 'Listview tipo 1', screen: const ListviewScreen(), icon: Icons.list_alt ),
    //MenuOption(route: 'listview2', name: 'Listview tipo 2', screen: const Listview2Screen(), icon: Icons.list ),
    //MenuOption(route: 'alert', name: 'Alertas - Alerts', screen: const AlertScreen(), icon: Icons.add_alert_outlined ),
    MenuOption(route: 'card', name: 'Inicio', screen: const CardScreen(), icon: Icons.home ),
    MenuOption(route: 'contact', name: 'Contacto', screen: const ContactScreen(), icon: Icons.account_circle ),
    MenuOption(route: 'avatar', name: 'Empresa', screen: const AvatarScreen(), icon: Icons.factory ),
  //  MenuOption(route: 'animated', name: 'Animacion', screen: const AnimatedScreen(), icon: Icons.account_circle ),
   // MenuOption(route: 'inputs', name: 'Inputs', screen: const InputScreen(), icon: Icons.input ),
    ];


  static Map<String, Widget Function(BuildContext)> getAppRoutes() {

    Map<String, Widget Function(BuildContext)> appRoutes = {};
    appRoutes.addAll({ 'home' : ( BuildContext context ) => const HomeScreen() });// se pone aqui parapoder acceder a las rutas(las opciones)

    for (final option in menuOptions ) {
      appRoutes.addAll({ option.route : ( BuildContext context ) => option.screen });
    }

    return appRoutes;
  }

  // static Map<String, Widget Function(BuildContext)> routes = {
  //   'home'     : ( BuildContext context ) => const HomeScreen(),
  //   'listview1': ( BuildContext context ) => const Listview1Screen(),
  //   'listview2': ( BuildContext context ) => const Listview2Screen(),
  //   'alert'    : ( BuildContext context ) => const AlertScreen(),
  //   'card'     : ( BuildContext context ) => const CardScreen(),
  // };

  static Route<dynamic> onGenerateRoute( RouteSettings settings) {        
      return MaterialPageRoute(
          builder: (context) => const AlertScreen(),
      );
  }

}

