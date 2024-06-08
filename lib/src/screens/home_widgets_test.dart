import 'package:flutter/material.dart';
import 'package:update_flutter/src/screens/widget/columns.dart';

class HomeWidgets extends StatelessWidget {
  const HomeWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SafeArea(
            child: Text(
              'Home Widgets',
              style: TextStyle(fontSize: 30),
            ),
          ),
          Columns(),
        ],
      ),
    );
  }
}
