import 'package:flutter/material.dart';

class ExpandedWidget extends StatelessWidget {
  const ExpandedWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          'ExpandedWidget',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: const Square(Colors.blue),
    );
  }
}

class Square extends StatelessWidget {
  final Color color;

  const Square(this.color, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        color: color,
      ),
    );
  }
}
