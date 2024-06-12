import 'package:flutter/material.dart';
import 'package:update_flutter/src/utils/list_box.dart';

class ListViewCustom extends StatelessWidget {
  const ListViewCustom({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView Custom'),
      ),
      // -- -- you custom for example 10 items in list user View.custom
      body: ListView.custom(
        childrenDelegate: SliverChildBuilderDelegate(
          // los hijos se crean bajo demanda con ⬆⬆⬆⬆
          (context, index) {
            return listBox[index];
          },
          // childCount: 10,
          childCount: 5,
        ),
      ),
    );
  }
}
