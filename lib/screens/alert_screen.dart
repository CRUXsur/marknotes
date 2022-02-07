import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
  const AlertScreen({Key? key}) : super(key: key);

  //Nos creamos un metodo para desplegar los mensajes de alertas*************
  void displayDialog(BuildContext context) {
    //
    showDialog(
        //para que cuando hagamos click en la sombra se cierre
        barrierDismissible: false,
        context: context,
        //builder devuelve un widget
        builder: (context) {
          //
          return AlertDialog(
            elevation: 5,
            title: const Text('Titulo'),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusDirectional.circular(10)),
            content: Column(
              //su contenido o sus hijos determina
              //el ancho y alto de la columna
              mainAxisSize: MainAxisSize.min,
              children: const [
                Text('Este es el contenido de la alerta'),
                SizedBox(height: 10),
                FlutterLogo(size: 100) //
              ],
            ),
            actions: [
              //
              TextButton(
                  onPressed: () => Navigator.pop(context), //
                  child: const Text('Cancelar'))
            ],
          );
          //
        } //
        );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: ElevatedButton(
/*         style: ElevatedButton.styleFrom(
            primary: Colors.indigo, shape: const StadiumBorder(), elevation: 0), */
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                child: Text('Mostrar alerta', style: TextStyle(fontSize: 16)),
              ),
              onPressed: () => displayDialog(context)
              //displayDialog //mando la referencia  al funcion**********
              )),
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.close), //
          //lo bloqueamos o dehabilitamos el boton con null
          //onPressed: null
          onPressed: () {
            //volvemos a la ultima pantalla que quedo en el stack de cards
            Navigator.pop(context);
          } //
          ),
    );
  }
}
