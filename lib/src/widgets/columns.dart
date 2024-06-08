import 'package:flutter/material.dart';
import 'package:update_flutter/src/utils/box.dart';

class Columns extends StatelessWidget {
  const Columns({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.end,
      mainAxisSize: MainAxisSize.max,
      verticalDirection: VerticalDirection.up,

      crossAxisAlignment: CrossAxisAlignment.stretch,

      
      children: [
        Box(
          color: Colors.red,
          number: 1,
          broad: 100.0
        ),
        Box(
          color: Colors.blue,
          number: 2,
          broad: 100.0,
        ),
        Box(
          color: Colors.green,
          number: 3,
          broad: 100.0,
        ),
      ],
    );
  }
}
