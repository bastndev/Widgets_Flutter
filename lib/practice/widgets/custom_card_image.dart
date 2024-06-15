import 'package:flutter/material.dart';

class CustomCardImage extends StatelessWidget {
  const CustomCardImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Card(
      child: Column(
        children: [
          ListTile(
            leading: Icon(Icons.image),
            title: Text('Image Network'),
            subtitle: Text(
                "Hello, this is a sample text. It is used to replace the existing lorem ipsum text. How are you doing today?"),
          )
        ],
      ),
    );
  }
}
