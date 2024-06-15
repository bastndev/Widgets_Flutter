import 'package:flutter/material.dart';

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
    );
  }
}
