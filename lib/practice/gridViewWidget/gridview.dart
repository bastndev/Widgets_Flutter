import 'package:flutter/material.dart';
import 'package:update_flutter/practice/gridViewWidget/gridview_builder.dart';

class GridViewPr extends StatelessWidget {
  const GridViewPr({super.key});

  @override
  Widget build(BuildContext context) {
    final list = [
      ListTile(
        leading: const Icon(Icons.arrow_outward_outlined),
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
      ),
      ListTile(
        leading: const Icon(Icons.arrow_outward_outlined),
        title: const Text('GridView.builder 2'),
        trailing: const Icon(Icons.arrow_forward_ios),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const GridViewBuilder(),
            ),
          );
        },
      ),
      ListTile(
        leading: const Icon(Icons.arrow_outward_outlined),
        title: const Text('GridView.builder 3'),
        trailing: const Icon(Icons.arrow_forward_ios),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const GridViewBuilder(),
            ),
          );
        },
      ),
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text('GridView Widgets'),
      ),
      body: ListView.separated(
        itemCount: list.length,
        separatorBuilder: (context, index) {
          return const Divider(
            height: 1,
            color: Colors.grey,
          );
        },
        itemBuilder: (context, index) {
          return list[index];
        },
      ),
    );
  }
}
