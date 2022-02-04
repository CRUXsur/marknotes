import 'package:flutter/material.dart';

import 'package:marknotes/router/app_routes.dart';
import 'package:marknotes/screens/screens.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: AppRoutes.initialRoute,
      routes: AppRoutes.getAppRoutes(),
      onGenerateRoute: AppRoutes.onGenerateRoute,
      theme: ThemeData.light().copyWith(
          //configuro segun los vaya utilizando
          //color primario
          primaryColor: Colors.indigo,
          //AppBAr Theme
          appBarTheme: const AppBarTheme(
              //
              color: Colors.indigo, //
              elevation: 0 //
              ) //
          ), //
    );
  }
}
