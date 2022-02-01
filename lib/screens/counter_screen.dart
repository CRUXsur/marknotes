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
      floatingActionButton: const CustomFloatingActions(),
    );
  }
}

//me crea el Widget totalmente independiente
class CustomFloatingActions extends StatelessWidget {
  const CustomFloatingActions({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      //mainAxisAlignment: MainAxisAlignment.center,
      //podemos crear espacios entre los botones
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,

      children: const [
        FloatingActionButton(
          child: Icon(Icons.exposure_plus_1_outlined, size: 40),
          //onPressed: () => setState(() => counter++),
          onPressed: null,
        ),
        //const SizedBox(width: 20),
        FloatingActionButton(
          child: Icon(Icons.restart_alt_outlined, size: 40),
          //onPressed: () => setState(() => counter = 0),
          onPressed: null,
        ),
        //const SizedBox(width: 20),
        FloatingActionButton(
          child: Icon(Icons.exposure_minus_1_outlined, size: 40),
          //onPressed: () => setState(() => counter--),
          onPressed: null,
        ),
      ],
    );
  }
}
