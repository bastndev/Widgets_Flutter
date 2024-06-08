import 'package:flutter/material.dart';
import 'package:update_flutter/src/screens/widget/box.dart';
class Columns extends StatelessWidget {
  const Columns({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Box(
              color: Colors.red,
              number: 1,
              broad: 100.0,
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
        ),
      ),
    );
  }
}