import 'package:flutter/material.dart';

import 'package:marknotes/screens/screens.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Componentes en Flutter'),
          elevation: 0,
        ),
        body: ListView.separated(
            itemBuilder: (context, index) => ListTile(
                  leading: const Icon(Icons.access_time_outlined),
                  title: const Text('Nombre Ruta'),
                  onTap: () {
                    //a otra pantalla
                    //1era OPCION****************************
                    // final route = MaterialPageRoute(
                    //     builder: (context) => const Listview1Screen());
                    // Navigator.push(context, route);
                    //2da OPCION*****************************
                    Navigator.pushNamed(context, 'card');
                  },
                ),
            separatorBuilder: (_, __) => const Divider(),
            itemCount: 10));
  }
}
