import 'package:flutter/material.dart';

import 'package:marknotes/theme/app_theme.dart';

class CustomCardType2 extends StatelessWidget {
  //propiedades
  final String imageUrl;
  final String? name; //no lo obligo al usuario, puede que me ponga o no!!!!!!!

  const CustomCardType2(
      {Key? key, //
      required this.imageUrl, //espero el url de la imagen
      this.name //y el nombre de la tarjeta
      })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
      elevation: 30,
      shadowColor: AppTheme.primary.withOpacity(0.5),
      child: Column(
        children: [
          FadeInImage(
            //Image(
            placeholder: const AssetImage('assets/jar-loading.gif'),
            image: NetworkImage(imageUrl),
            //con estas dos dimensiones evitamos el "brinco" de la imagen
            width: double.infinity,
            height: 230,
            //pero como quiero que la imagen se adpte a su widget ..
            fit: BoxFit.cover,
            fadeInDuration: const Duration(milliseconds: 300),
          ),
          if (name != null)
            Container(
                alignment: AlignmentDirectional.centerEnd,
                padding: const EdgeInsets.only(right: 20, top: 10, bottom: 10),
                //child: Text(name ?? 'No Title') //OR*******
                child: Text(name!) //como lo estoy evaluando , jamas sera null
                //y le digo con el ! : ok fltter confia en mi que nos sera null
                )
        ],
      ),
    );
  }
}
