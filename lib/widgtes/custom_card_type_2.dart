import 'package:flutter/material.dart';

import 'package:marknotes/theme/app_theme.dart';

class CustomCardType2 extends StatelessWidget {
  const CustomCardType2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
      elevation: 30,
      shadowColor: AppTheme.primary.withOpacity(0.5),
      child: Column(
        children: [
          const FadeInImage(
            //Image(
            placeholder: AssetImage('assets/jar-loading.gif'),
            image: NetworkImage(
                'https://photographylife.com/wp-content/uploads/2017/01/What-is-landscape-photography.jpg'),
            //con estas dos dimensiones evitamos el "brinco" de la imagen
            width: double.infinity,
            height: 230,
            //pero como quiero que la imagen se adpte a su widget ..
            fit: BoxFit.cover,
            fadeInDuration: Duration(milliseconds: 300),
          ),
          Container(
              alignment: AlignmentDirectional.centerEnd,
              padding: const EdgeInsets.only(right: 20, top: 10, bottom: 10),
              child: const Text('Un hermoso paisaje') //
              )
        ],
      ),
    );
  }
}
