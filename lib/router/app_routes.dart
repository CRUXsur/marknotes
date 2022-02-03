import 'package:flutter/material.dart';

import 'package:marknotes/models/models.dart';
import 'package:marknotes/screens/screens.dart';

class AppRoutes {
/**
 *     static : porque NO QUIERO CREAR UNA INSTANCIA DE AppRoutes
 *              quiero acceder directamente como AppRoutes.xxxxxx
 */

  static const initialRoute = 'home';

  static final menuOptions = <MenuOption>[
    // TODO: borrar home
    MenuOption(
        route: 'home',
        name: 'Home Screen',
        screen: const HomeScreen(),
        icon: Icons.home_max_sharp),
    MenuOption(
        route: 'listview1',
        name: 'ListView Tipo 1',
        screen: const Listview1Screen(),
        icon: Icons.list_alt),
    MenuOption(
        route: 'listview2',
        name: 'ListView Tipo 2',
        screen: const Listview2Screen(),
        icon: Icons.list),
    MenuOption(
        route: 'alert',
        name: 'Alertas - Alerts',
        screen: const AlertScreen(),
        icon: Icons.add_alert_outlined),
    MenuOption(
        route: 'card',
        name: 'Tarjetas - Cards',
        screen: const CardScreen(),
        icon: Icons.credit_card)
  ];

/**
*     creo un metodo getAppRoutes; que regresa un mapa; que tiene 
*     como llave un String, y lo que va apuntar es a una funcion 
*     que recibe el BuildContext y regresa un Widget
*
 */
  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    //tenemos que regresar algo,.....
    //defino un mapa appRoutes
    Map<String, Widget Function(BuildContext)> appRoutes = {}; //definido

    for (final option in menuOptions) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }

    return appRoutes;
  }

/*   static Map<String, Widget Function(BuildContext)> routes = {
    'home': (BuildContext context) => const HomeScreen(),
    'listview1': (BuildContext context) => const Listview1Screen(),
    'listview2': (BuildContext context) => const Listview2Screen(),
    'alert': (BuildContext context) => const AlertScreen(),
    'card': (BuildContext context) => const CardScreen()
  }; */
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) => const AlertScreen(),
    );
  }
}
