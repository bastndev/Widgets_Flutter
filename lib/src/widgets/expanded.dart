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
        body: const Row(
          children: [
            Square(Colors.blue),
            Expanded(
              flex: 3,
              child: Square(Colors.red),
            ),
            Expanded(
              child: Square(Colors.red),
            ),
            Square(Colors.blue),
          ],
        ));
  }
}

class Square extends StatelessWidget {
  final Color color;
  const Square(this.color, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        color: color,
      ),
    );
  }
}
