import 'package:flutter/material.dart';

//cuando toco el boton 'add' + ; necesito cambiar el estado de este Homescreen
//del  StatelessWidget..........
class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key); //key:sidentifica este widget
  /// AQUI VAN LAS PROPIEDADES********************************

  @override
  //buildContext:arbol de widgets!!!
  Widget build(BuildContext context) {
    /// AQUI VAN LAS VARIABLES*******************************
    //variable del tamano de letra
    //TextStyle fontSize30 = const TextStyle(fontSize: 30);
    //or
    const fontSize30 = TextStyle(fontSize: 30);
    int counter = 0; //variable
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
          children: <Widget>[
            const Text('Número de Clicks', style: fontSize30),
            Text('$counter', style: fontSize30),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        //ponemos un icon
        //Icon: es un widget especializado para mostrar iconos
        child: const Icon(Icons.add, size: 40),
        onPressed: () {
          //
          counter++;
          //print('Hola mundo:  $counter');
        },
      ),
    );
  }
  //
}
