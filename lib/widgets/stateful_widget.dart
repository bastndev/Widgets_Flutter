import 'package:flutter/material.dart';

//-TODO: stateful widget
class FulScreen extends StatefulWidget {
  const FulScreen({super.key});

  @override
  State<FulScreen> createState() => _FulScreenState();
}

// don't be afraid to use stateful widget if you need to change the state of the widget
class _FulScreenState extends State<FulScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('FulScreen 22'),
      ),
    );
  }
}
