import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {
  final String? hintText;
  final String? labelText;
  final String? helperText;
  final IconData? icon;
  final IconData? suffixIcon;
  final TextInputType? keyboardType;
  final bool obscureText; //isPassword;

  const CustomInputField({
    Key? key,
    this.hintText,
    this.labelText,
    this.helperText,
    this.icon,
    this.suffixIcon,
    this.keyboardType,
    this.obscureText = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        autofocus: false, //
        initialValue: '', //
        textCapitalization: TextCapitalization.words,
        //keyboardType: TextInputType.emailAddress,
        keyboardType: keyboardType,
        //obscureText: true,
        obscureText: obscureText,
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
        decoration: InputDecoration(
          hintText: hintText, //Nombre del usuario
          labelText: labelText, //Nombre
          helperText: helperText, //solo letras
          //counterText:
          prefixIcon: const Icon(Icons.verified_user_outlined),
          //suffixIcon: Icon(Icons.group_outlined), //
          suffixIcon: suffixIcon == null ? null : Icon(suffixIcon), //
          //icon: Icon(Icons.assignment_ind_outlined),
          icon: icon == null ? null : Icon(icon),
          //configurar el color del borde!
/*                       focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.green)), //
          //
          border: OutlineInputBorder(
              borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(10),
            topRight: Radius.circular(10),
          )), */
        )
        //
        );
  }
}
