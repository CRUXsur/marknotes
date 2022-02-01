import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({Key? key}) : super(key: key);

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  /// AQUI VAN LAS PROPIEDADES********************************
  int counter = 15; //propiedad
  //Creamos un metodo dentro del State................................
  void increase() {
    counter++;
    setState(() {});
  }

  void decrease() {
    counter--;
    setState(() {});
  }

  void reset() {
    counter = 0;
    setState(() {});
  }

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
      floatingActionButton: CustomFloatingActions(
          //tengo que mandar mi funcion(la referencia , no la estoy ejecutando)
          increaseFn: increase, //la referncia es sin (), para ejecutar con ()
          decreaseFn: decrease, //la referncia es sin (), para ejecutar con ()
          resetFn: reset),
    );
  }
}

//me crea el Widget totalmente independiente
class CustomFloatingActions extends StatelessWidget {
  //propiedad
  final Function increaseFn;
  final Function decreaseFn;
  final Function resetFn;

  const CustomFloatingActions({
    Key? key,
    required this.increaseFn,
    required this.decreaseFn,
    required this.resetFn,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      //mainAxisAlignment: MainAxisAlignment.center,
      //podemos crear espacios entre los botones
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,

      children: [
        FloatingActionButton(
          child: const Icon(Icons.exposure_plus_1_outlined, size: 40),
          //onPressed: () => setState(() => counter++),
          onPressed: () => increaseFn(), //() lo estoy ejecutamdo!!!!!!!!
        ),
        //const SizedBox(width: 20),
        FloatingActionButton(
          child: const Icon(Icons.restart_alt_outlined, size: 40),
          //onPressed: () => setState(() => counter = 0),
          onPressed: () {
            resetFn();
          },
        ),
        //const SizedBox(width: 20),
        FloatingActionButton(
          child: const Icon(Icons.exposure_minus_1_outlined, size: 40),
          //onPressed: () => setState(() => counter--),
          onPressed: () => decreaseFn(),
        ),
      ],
    );
  }
}
