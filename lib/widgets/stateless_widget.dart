import 'package:flutter/material.dart';

//-TODO: stateless widget
class LessScreen extends StatelessWidget {
  const LessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: const Text(
          'StatelessWidget',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: const Column(
        children: [
          TextField(
            decoration: InputDecoration(
              hintText: 'Enter your name',
              labelText: 'Name',
            ),
          )
        ],
      ),
    );
  }
}
