import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({Key? key}) : super(key: key);

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  /// AQUI VAN LAS PROPIEDADES********************************
  int counter = 0; //propiedad

  @override
  Widget build(BuildContext context) {
    /// AQUI VAN LAS VARIABLES*******************************
    const fontSize30 = TextStyle(fontSize: 30);
    //int counter = 0; //variable; con StatefulWidget de variable a propiedad
    return Scaffold(
      appBar: AppBar(
        title: const Text('CounterScreen'),
        elevation: 10.0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('Número de Clicks', style: fontSize30),
            Text('$counter', style: fontSize30),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Row(
        //mainAxisAlignment: MainAxisAlignment.center,
        //podemos crear espacios entre los botones
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,

        children: [
          FloatingActionButton(
            child: const Icon(Icons.exposure_plus_1_outlined, size: 40),
            onPressed: () {
              counter++;
              setState(() {}); //REDIBUJA el estado, la pantalla
              //print('Hola mundo:  $counter');
            },
          ),
          //const SizedBox(width: 20),
          FloatingActionButton(
            child: const Icon(Icons.restart_alt_outlined, size: 40),
            onPressed: () {
              counter = 0;
              setState(() {}); //REDIBUJA el estado, la pantalla
              //print('Hola mundo:  $counter');
            },
          ),
          //const SizedBox(width: 20),
          FloatingActionButton(
            child: const Icon(Icons.exposure_minus_1_outlined, size: 40),
            onPressed: () {
              counter--;
              setState(() {}); //REDIBUJA el estado, la pantalla
              //print('Hola mundo:  $counter');
            },
          ),
        ],
      ),
    );
  }
}
