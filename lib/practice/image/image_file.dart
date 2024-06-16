import 'package:flutter/material.dart';

class ImageFile extends StatelessWidget {
  const ImageFile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: const Text('Image File'),
      ),
      body: const Center(
        child: Text('ImageFile'),// Image_picker
      ),
    );
  }
}
