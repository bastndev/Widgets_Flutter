import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class ImageUdemy extends StatelessWidget {
  const ImageUdemy({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: const Text(
          'Image Udemy',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        children: const [
          CustomCard(),
          CustomCardImage(imageUrl: 'https://avatars.githubusercontent.com/bastndev',),
          SizedBox(height: 10),
          CustomCardImage(imageUrl: 'https://images.pexels.com/photos/7408586/pexels-photo-7408586.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',),
          SizedBox(height: 10),
          CustomCardImage(imageUrl: 'https://images.pexels.com/photos/25637494/pexels-photo-25637494/free-photo-of-escaleras-interior-moderno-paredes.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',),
        ],
      ),
    );
  }
}
