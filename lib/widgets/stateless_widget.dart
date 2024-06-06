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
      body: const Center(
        child: MyStatelessWidget(),
      ),
    );
  }
}

class MyStatelessWidget extends StatelessWidget {
  const MyStatelessWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Hello, I am a StatelessWidget!',
      style: TextStyle(fontSize: 24),
    );
  }
}
