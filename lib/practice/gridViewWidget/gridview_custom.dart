import 'package:flutter/material.dart';

class GridViewCustom extends StatelessWidget {
  const GridViewCustom({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GridView.custom'),
      ),
      body: GridView.custom(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10.0,
          mainAxisSpacing: 10.0,
          childAspectRatio: 1/2,
          // childAspectRatio: 3 / 2,
        ),
        childrenDelegate: SliverChildBuilderDelegate(
          ( context, index) {
            return Container(
              color: Colors.purple[100 * (index % 9)],
              child: Center(
                child: Text('Item $index'),
              ),
            );
          },
          childCount: 30,
        ),
      ),
    );
  }
}
