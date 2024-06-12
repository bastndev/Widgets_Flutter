import 'package:flutter/material.dart';
import 'package:update_flutter/practice/gridViewWidget/gridview_builder.dart';

class GridViewPr extends StatelessWidget {
  const GridViewPr({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        ListTile(
          leading: const Icon(Icons.breakfast_dining_sharp),
          title: const Text('GridView.builder'),
          trailing: const Icon(Icons.arrow_forward_ios),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const GridViewBuilder(), 
              ),
            );
          },
        )
      ],
    ));
  }
}
