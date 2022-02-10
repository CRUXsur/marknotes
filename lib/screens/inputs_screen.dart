import 'package:flutter/material.dart';
import 'package:marknotes/widgtes/widgets.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inputs & Forms'),
      ),
      body: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Column(
              children: const [
                CustomInputField(
                  labelText: 'Nombre',
                  helperText: 'solo letras',
                  hintText: 'Nombre del usuario',
                )
              ],
            )),
      ),
    );
  }
}
