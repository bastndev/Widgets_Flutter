import 'package:flutter/material.dart';
import 'package:update_flutter/src/utils/box.dart';

class RowPractice extends StatelessWidget {
  const RowPractice({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      textDirection: TextDirection.rtl,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Box(color: Colors.red, number: 1, broad:65.0),
        Box(color: Colors.blue, number: 2, broad:65.0),
        Box(color: Colors.green, number: 3, broad:65.0),
        Box(color: Colors.orange, number: 4, broad:65.0),
      ],
    );
  }
}
