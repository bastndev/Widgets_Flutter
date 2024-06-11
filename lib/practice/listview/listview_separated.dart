import 'package:flutter/material.dart';
import 'package:update_flutter/src/utils/list_box.dart';

class ListViewSeparated extends StatelessWidget {
  const ListViewSeparated({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView Separated'),
      ),
      body: ListView.separated(
        itemCount: listBox.length,
        separatorBuilder: (context, index) {
          return const Divider(
            color: Colors.black,
            height: 20.0,
          );
        },
        itemBuilder: (context, index) {
          // Widget item = listBox[index]; // optional
          final item = listBox[index];
          return item;
        },
      ),
    );
  }
}
