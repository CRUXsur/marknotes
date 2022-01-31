import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key); //key:sidentifica este widget

  @override
  //buildContext:arbol de widgets!!!
  Widget build(BuildContext context) {
    //variable del tamano de letra
    //TextStyle fontSize30 = const TextStyle(fontSize: 30);
    //or
    const fontSize30 = TextStyle(fontSize: 30);

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
            Text('Número de Clicks', style: fontSize30),
            Text('10', style: fontSize30),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        //ponemos un icon
        //Icon: es un widget especializado para mostrar iconos
        child: const Icon(Icons.add),
        onPressed: () {
          //
          //print('Hola mundo');
        },
      ),
    );
  }
  //
}
