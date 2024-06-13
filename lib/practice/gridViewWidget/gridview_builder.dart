import 'package:flutter/material.dart';

class GridViewBuilder extends StatelessWidget {
  const GridViewBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GridView.builder'),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(10.0),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10.0,
          mainAxisSpacing: 10.0,
          // childAspectRatio: 1/4,
          childAspectRatio: 3/2,

        ),
        itemCount: 30,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            color: Colors.orange[100 * (index % 9)],
            child: Center(
              child: Text('Item $index'),
            ),
          );
        },
      ),
    );
  }
}
