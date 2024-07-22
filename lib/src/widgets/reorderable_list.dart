import 'package:flutter/material.dart';

class ReorderableListWidget extends StatefulWidget {
  const ReorderableListWidget({super.key});

  @override
  State<ReorderableListWidget> createState() => _ReorderableListWidgetState();
}

final List<int> _items = List<int>.generate(10, (int index) => index);

class _ReorderableListWidgetState extends State<ReorderableListWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          'Reorderable List',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: content(),
    );
  }

  Widget content() {
    return Container();
  }
}
