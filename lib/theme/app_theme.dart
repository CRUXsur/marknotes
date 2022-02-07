import 'package:flutter/material.dart';

class AppTheme {
  //
  static const Color primary = Colors.indigo;
  //
  //  LIGHT THEME

  static final ThemeData lightTheme = ThemeData.light().copyWith(
      //configuro segun los vaya utilizando
      //color primario
      primaryColor: Colors.indigo,
      //AppBAr Theme
      appBarTheme: const AppBarTheme(
          //
          color: primary, //
          elevation: 0 //
          ), //
      // TextButton Theme
      textButtonTheme:
          TextButtonThemeData(style: TextButton.styleFrom(primary: primary) //
              ), //
      // FloatingActionButtons
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: primary, //
          elevation: 5 //
          ), //
      // ElevatedButtons
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
            primary: Colors.indigo, shape: const StadiumBorder(), elevation: 0),
      ) //
      );

  //
  //  DARK THEME

  static final ThemeData darkTheme = ThemeData.dark().copyWith(
      //configuro segun los vaya utilizando
      //color primario
      primaryColor: Colors.indigo,
      //AppBAr Theme
      appBarTheme: const AppBarTheme(
          //
          color: primary, //
          elevation: 0 //
          ),
      scaffoldBackgroundColor: Colors.black //
      );
}
