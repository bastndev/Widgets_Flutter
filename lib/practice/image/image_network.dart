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
        'https://i.ytimg.com/vi/3GKo2tfAUXY/hq720.jpg?sqp=-oaymwEhCK4FEIIDSFryq4qpAxMIARUAAAAAGAElAADIQj0AgKJD&rs=AOn4CLAsARQIf89DZAD091asvcX7VCceSg',
        fit: BoxFit.cover,
      )
    );
  }
}
