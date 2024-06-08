import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stack Practice'),
      ),
      body: ListView(
        children: const [
          Text("Hello World!"),
        ],
      ),
    );
  }
}
