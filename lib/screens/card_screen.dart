import 'package:flutter/material.dart';

import 'package:marknotes/widgtes/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Card Widget'),
        ),
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          children: const [
            //Crtl. extract Widget
            CustomCardType1(),
            SizedBox(height: 10),
            CustomCardType2(
              name: 'Un Hermoso Paisaje',
              imageUrl:
                  'https://photographylife.com/wp-content/uploads/2017/01/What-is-landscape-photography.jpg',
            ),
            SizedBox(height: 20),
            CustomCardType2(
              name: null,
              imageUrl:
                  'https://photographylife.com/wp-content/uploads/2017/01/What-is-landscape-photography.jpg',
            ),
            SizedBox(height: 20),
            CustomCardType2(
              name: 'hola',
              imageUrl:
                  'https://photographylife.com/wp-content/uploads/2017/01/What-is-landscape-photography.jpg',
            ),
            SizedBox(height: 10),
            //
            //
          ],
        ));
  }
}
