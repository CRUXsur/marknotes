import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
  const AvatarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stan Lee'),
        actions: [
          //
          Container(
            //margin:separacion externa
            //padding: separacion interna
            margin: const EdgeInsets.only(right: 5),
            child: CircleAvatar(
              child: const Text('SL'),
              backgroundColor: Colors.indigo[900],
            ),
          )
        ],
      ),
      body: const Center(
          //
          child: CircleAvatar(
        //
        maxRadius: 120, //
        backgroundImage: NetworkImage(
            'https://static.wikia.nocookie.net/esstarwars/images/d/d6/Yoda_SWSB.png/revision/latest?cb=20180105191224'),
      )),
    );
  }
}
