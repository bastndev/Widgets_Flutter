import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ImageWidget'),
      ),
      // body: Image.asset('assets/images/rabbit.gif'),
      // body: Image.network('https://via.placeholder.com/150'),
      // body: Image.network('https://clan.akamai.steamstatic.com/images//3703047/efb1c8d504529df488142c21ec900f0c5542fbfa.png'),
      
      // body: Image.file(),
    );
  }
}
