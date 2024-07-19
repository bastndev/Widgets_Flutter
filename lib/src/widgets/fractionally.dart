import 'package:flutter/material.dart';

class FractionallyWidget extends StatelessWidget {
  const FractionallyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: const Text(
          'FractionallyWidget',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Container(
          width: 300,
          height: 200,
          color: Colors.orange,
          child: FractionallySizedBox(
            widthFactor: 1,
            heightFactor: 0.5,
            child: ElevatedButton(
              onPressed: () {},
              child: const Text('Click Me'),
            ),
          ),
        ),
      ),
    );
  }
}

/* 
body: Center(
        child: FractionallySizedBox(
          widthFactor: 0.6,
          heightFactor: 0.05,
          child: ElevatedButton(
            onPressed: () {},
            child: const Text('Click Me'),
          )
        ),
      ) */