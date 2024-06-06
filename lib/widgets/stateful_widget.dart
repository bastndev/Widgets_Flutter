import 'package:flutter/material.dart';

//-TODO: stateful widget
class FulScreen extends StatefulWidget {
  const FulScreen({super.key});

  @override
  State<FulScreen> createState() => _FulScreenState();
}

// don't be afraid to use stateful widget if you need to change the state of the widget
class _FulScreenState extends State<FulScreen> {
  String name = "Maria";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(140.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(name),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    name = "John";
                  });
                },
                child: const Text("Click me"),
              )
            ],
          ),
        ),
      ),
    );
  }
}