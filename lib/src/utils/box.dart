import 'package:flutter/material.dart';

class Box extends StatelessWidget {
  final Color color;
  final int number;
  final double broad;

  const Box({
    super.key,
    required this.color,
    required this.number,
    required this.broad,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: broad,
      height: broad,
      color: color,
      child: Center(
        child: Text(
          number.toString(),
          style: const TextStyle(fontSize: 30.0),
        ),
      ),
    );
  }
}
