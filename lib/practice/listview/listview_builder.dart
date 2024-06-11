import 'package:flutter/material.dart';
import 'package:update_flutter/src/utils/list_box.dart';

class ListViewBuilder extends StatelessWidget {
  const ListViewBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        reverse: true, //start bottom in 1 to 12 listView
        itemCount: listBox.length,
        padding: const EdgeInsets.only(top: 40.0),

        // --- ⬇⬇⬇ that is a function that returns a widget
        itemBuilder: (context, index) {
          Widget element = listBox[index];
          return element;
        },
      ),
    );
  }
}
