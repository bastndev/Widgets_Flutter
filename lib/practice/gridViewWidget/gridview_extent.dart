import 'package:flutter/material.dart';

class GridViewExtent extends StatelessWidget {
  const GridViewExtent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: const Text(
          'GridView.extent',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: GridView.extent(
        maxCrossAxisExtent: 200,
        // padding: const EdgeInsets.all(10.0),
        crossAxisSpacing: 10.0,
        mainAxisSpacing: 10.0,
        // childAspectRatio: 1/2.3,
        childAspectRatio: 3.5/2,
        children: List.generate(9, (index) {
          return Container(
            color: Colors.pink[100 * (index % 9)],
            child: Center(
              child: Text('Item $index'),
            ),
          );
        }),
      ),
    );
  }
}
