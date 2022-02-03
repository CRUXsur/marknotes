import 'package:flutter/material.dart';

import 'package:marknotes/router/app_routes.dart';

//import 'package:marknotes/screens/screens.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final menuOptions = AppRoutes.menuOptions;

    return Scaffold(
        appBar: AppBar(
          title: const Text('Componentes en Flutter'),
          elevation: 0,
        ),
        body: ListView.separated(
            itemBuilder: (context, i) => ListTile(
                  //leading: const Icon(Icons.access_time_outlined),
                  leading: Icon(
                    menuOptions[i].icon,
                    color: Colors.indigo,
                  ),
                  title: Text(menuOptions[i].name),
                  onTap: () {
                    //a otra pantalla
                    //1era OPCION****************************
                    // final route = MaterialPageRoute(
                    //     builder: (context) => const Listview1Screen());
                    // Navigator.push(context, route);
                    //2da OPCION*****************************
                    Navigator.pushNamed(context, menuOptions[i].route);
                  },
                ),
            separatorBuilder: (_, __) => const Divider(),
            itemCount: menuOptions.length));
  }
}
