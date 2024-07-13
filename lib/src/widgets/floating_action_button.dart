import 'package:flutter/material.dart';

class FloatingActionBtn extends StatefulWidget {
  const FloatingActionBtn({super.key});

  @override
  State<FloatingActionBtn> createState() => _FloatingActionBtnState();
}

class _FloatingActionBtnState extends State<FloatingActionBtn> {
  int number = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('Floating Action Button'),
      ),
      body: Center(
        child: Text('Hello Mayer! $number'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            number++;
          });
        },
        backgroundColor: Colors.blue,
        child: const Icon(Icons.add),
      ),
    );
  }
}
