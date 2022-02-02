import 'package:flutter/material.dart' show IconData, Widget;

class MenuOption {
  final String route;
  final IconData icon;
  final String name;
  final Widget screen;

  //{} : para que pueda mandar en el orden que quiera!*******************
  //{} : ademas es opcional, pero required  lo vuelve obligatorio********
  MenuOption(
      {required this.route,
      required this.icon,
      required this.name,
      required this.screen});
}
