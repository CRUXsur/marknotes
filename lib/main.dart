import 'package:flutter/material.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  //MyApp:1er widget
  //todo StatelessWidget tiene
  //un metodo build el cual recibe el
  //BuildContext context , de esa forma
  @override
  Widget build(BuildContext context) {
    //tengo que retornar un widget
    return MaterialApp(
        //retornaremos un widget de material, 2do widget
        //Crtl + space => aparece una lista de propiedades
        //widgets que podemos usar..
        //documentacion en:
        //https://api.flutter.dev/flutter/material/MaterialApp-class.html
        home: Center(
      //otro widget con hijo child: Text
      child: Text('Hola Mundo'), //3er Widget Text
    ));
  }
  //
}
