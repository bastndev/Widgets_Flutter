import 'package:flutter/material.dart';
import 'package:update_flutter/src/utils/list_box.dart';

class ListViewBuilder extends StatelessWidget {
  const ListViewBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('ListViewBuilder'),
      ),
      body: ListView.builder(
        reverse: true,
        itemCount: listBox.length,
        itemBuilder: (context, index) {
          final items = listBox[index];
          return items;
        },
      ),
    );
  }
}
