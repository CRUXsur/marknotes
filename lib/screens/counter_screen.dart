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
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add, size: 40),
        onPressed: () {
          counter++;
          setState(() {});
          //print('Hola mundo:  $counter');
        },
      ),
    );
  }
}
