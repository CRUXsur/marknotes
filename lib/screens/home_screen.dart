import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key); //key:sidentifica este widget

  @override
  //buildContext:arbol de widgets!!!
  Widget build(BuildContext context) {
    //el build regresa un Widget
    return Scaffold(
      //esta esperando un widget que tiene un cierto tanano definido
      appBar: AppBar(
        //
        title: const Text('HomeScreen'),
        elevation: 10.0,
      ),
      body: Center(
        child: Column(
          //propiedades de la columna
          //si es columa el alineamiento principal es hacia abajo(vertical)
          mainAxisAlignment: MainAxisAlignment.center,
          //hoorizontal aligmente
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: const <Widget>[
            Text('Clicks counter'), //3er Widget Text
            Text('0'),
          ],
        ),
      ),
    );
  }
  //
}
