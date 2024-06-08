import 'package:flutter/material.dart';

class MarginPadding extends StatelessWidget {
  const MarginPadding({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Center(
      child: Container(
        margin: EdgeInsets.only(top: 20, left: screenWidth * 0.6),
        padding: const EdgeInsets.only(top: 10, bottom: 0, left: 20, right: 20),
        color: Colors.orange,
        child: const Text(
          'Text with padding y margin',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}