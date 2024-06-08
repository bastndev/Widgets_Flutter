import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          'Stack Widgets 💙',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView(
        children: const [
          Text("Hello World!"),
        ],
      ),
    );
  }
}
