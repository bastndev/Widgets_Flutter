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
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        children: const [
          Card(
            child: Column(
              children: [
                ListTile(
                  leading: Icon(Icons.image),
                  title: Text('Image Network'),
                  subtitle: Text("Hello, this is a sample text. It is used to replace the existing lorem ipsum text. How are you doing today?"),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
