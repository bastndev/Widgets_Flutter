import 'package:flutter/material.dart';

class GridViewCount extends StatelessWidget {
  const GridViewCount({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GridView.count'),
      ),
      body: GridView.count(
        padding: const EdgeInsets.all(10.0),
        crossAxisCount: 2,
        crossAxisSpacing: 10.0,
        mainAxisSpacing: 10.0,
        // childAspectRatio: 1/4,
        childAspectRatio: 3/2,
        children: List.generate(9, (index) {
          return Container(
            color: Colors.orange[100 * (index % 9)],
            child: Center(
              child: Text('Item $index'),
            ),
          );
        }),
      ),
    );
  }
}
