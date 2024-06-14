import 'package:flutter/material.dart';

class ImageNetwork extends StatelessWidget {
  const ImageNetwork({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Image Network'),
      ),
      body: Image.network(
        'https://picsum.photos/250?image=9',
        loadingBuilder: (context, child, loadingProgress) {
          if (loadingProgress == null) {
            return child;
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
        errorBuilder: (context, error, stackTrace) {
          return const Center(
            child: Text('Error loading image'),
          );
        },
      )
    );
  }
}
