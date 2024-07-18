import 'package:flutter/material.dart';

class CircularProgressWidget extends StatelessWidget {
  const CircularProgressWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: const Text('CircularProgressWidget'),
      ),
      body: const Center(
        child: CircularProgressIndicator(
          color: Colors.blueGrey,
          backgroundColor: Colors.orange,
        ),
      ),
    );
  }
}
