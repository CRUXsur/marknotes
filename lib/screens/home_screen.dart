import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key); //key:sidentifica este widget

  @override
  //buildContext:arbol de widgets!!!
  Widget build(BuildContext context) {
    //el build regresa un Widget
    return const Scaffold(
      //es como un lienzo donde puedo put my widgets
      //backgroundColor: Colors.amber,
      body: Center(
        //otro widget con hijo child: Text
        child: Text('HomeScreen'), //3er Widget Text
      ),
    );
  }
  //
}
