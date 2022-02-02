import 'package:flutter/material.dart';

class Listview2Screen extends StatelessWidget {
  final options = const [
    'Megaman',
    'Metal Gear',
    'Super Smash',
    'Final Fantasy'
  ];

  const Listview2Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Listview Tipo 2'),
        ),
        //este Listview.separated renderiza la lista que solo aparecera!
        body: ListView.separated(
          itemCount: options.length, //cuantos elementos tengo?
          //como va a construir c/ item
          //itemBuilder: (context, index) => Text(options[index]),
          itemBuilder: (context, index) => ListTile(
            //leading: Icon(Icons.access_time_sharp),
            title: Text(options[index]),
            trailing: const Icon(Icons.arrow_forward_ios_outlined),
          ),
          //_ :no lo estoy utilizando
          //__ : tampoco lo estoy utilizando
          separatorBuilder: (_, __) => const Divider(),
        ) //
        );
  }
}
