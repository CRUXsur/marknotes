import 'package:flutter/material.dart';
import 'package:marknotes/widgtes/widgets.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();

    final Map<String, String> formValues = {
      'first_name': 'Fernando',
      'last_name': 'Herrera',
      'email': 'fer@google.com',
      'password': '123456',
      'role': 'admin'
    };

    return Scaffold(
      appBar: AppBar(
        title: Text('Inputs & Forms'),
      ),
      body: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Form(
              key: myFormKey,
              child: Column(
                children: [
                  CustomInputField(
                    labelText: 'Nombre',
                    helperText: 'solo letras',
                    hintText: 'Nombre del usuario',
                    formProperty: 'first_name',
                    formValues: formValues,
                  ),
                  const SizedBox(height: 30),
                  CustomInputField(
                    labelText: 'Apellido',
                    helperText: 'solo letras',
                    hintText: 'Apellido del usuario',
                    formProperty: 'last_name',
                    formValues: formValues,
                  ),
                  const SizedBox(height: 30),
                  CustomInputField(
                    labelText: 'Correo',
                    helperText: 'solo letras',
                    hintText: 'Correo del usuario',
                    keyboardType: TextInputType.emailAddress,
                    formProperty: 'email',
                    formValues: formValues,
                  ),
                  const SizedBox(height: 30),
                  CustomInputField(
                    labelText: 'Contrasena',
                    helperText: 'solo letras',
                    hintText: 'Contrasena del usuario',
                    obscureText: true,
                    formProperty: 'password',
                    formValues: formValues,
                  ),
                  const SizedBox(height: 30),
                  ElevatedButton(
                    child: const SizedBox(
                      width: double.infinity,
                      child: Center(child: Text('Guardar')), //
                    ), //
                    onPressed: () {
                      //*quito el teclado
                      FocusScope.of(context).requestFocus(FocusNode());

                      if (!myFormKey.currentState!.validate()) {
                        print('Formulario no valido');
                        return;
                      }
                      //*imprimir valores del formulario
                      print(formValues);
                    },
                  )
                ],
              ),
            )),
      ),
    );
  }
}
