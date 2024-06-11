import 'package:flutter/material.dart';

class ListviewPractice extends StatelessWidget {
  const ListviewPractice({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView Practice'),
      ),
      body: ListView(
        children: const [
          Text("ListView Practice 0"),
          Text("ListView Practice 1"),
          Text("ListView Practice 2"),
          Text("ListView Practice 3"),
          Text("ListView Practice 4"),
          Text("ListView Practice 5"),
          Text("ListView Practice 6"),
          Text("ListView Practice 7"),
          Text("ListView Practice 8"),
        ],
      ),
    );
  }
}
