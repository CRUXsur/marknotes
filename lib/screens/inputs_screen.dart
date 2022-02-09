import 'package:flutter/material.dart';

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
              children: [
                //
                //
                TextFormField(
                    autofocus: false, //
                    initialValue: '', //
                    textCapitalization: TextCapitalization.words,
                    onChanged: (value) {
                      //
                      print('value: $value');
                    },
                    //validaciones
                    validator: (value) {
                      if (value == null) return 'Este campo es requerido';
                      return value.length < 3 ? 'Minimo de 3 letras' : null;
                    },
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    decoration: const InputDecoration(
                      hintText: 'Nombre del usuario',
                      labelText: 'Nombre',
                      helperText: 'Solo letras',
                      //counterText:
                      prefixIcon: Icon(Icons.verified_user_outlined),
                      suffixIcon: Icon(Icons.group_outlined), //
                      icon: Icon(Icons.assignment_ind_outlined),
                      //configurar el color del borde!
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.green)), //
                      //
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                      )),
                    )
                    //
                    )
                //
                //
              ],
            )),
      ),
    );
  }
}
