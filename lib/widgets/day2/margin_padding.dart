import 'package:flutter/material.dart';

class MarginPadding extends StatelessWidget {
  const MarginPadding({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: const EdgeInsets.all(16.0), // Margen externo
        padding: const EdgeInsets.all(8.0), // Padding interno
        color: Colors.blue,
        child: const Text(
          'Text with padding y margin',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
