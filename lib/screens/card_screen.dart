import 'package:flutter/material.dart';

import 'package:marknotes/theme/app_theme.dart';

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
          children: [
            //
            //
            Card(
              child: Column(
                children: const [
                  ListTile(
                    leading: Icon(Icons.photo_album_outlined,
                        color: AppTheme.primary),
                    title: Text('Soy un titulo'),
                    subtitle: Text(
                        'Sint qui quis aute veniam id duis commodo ullamco voluptate minim ea eu. Voluptate fugiat et minim officia. Magna magna ipsum dolor labore officia. Et ut tempor officia excepteur non pariatur sint id cupidatat amet occaecat.'),
                  )
                ],
              ),
            )
            //
            //
          ],
        ));
  }
}
