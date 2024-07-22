import 'package:flutter/material.dart';

class LayoutBuilderWidget extends StatelessWidget {
  const LayoutBuilderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        automaticallyImplyLeading: false, //delete back icon
        title: const Text(
          'Is no last is a start',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth > 600) {
            return Center(
              child: Image.network(
                  'https://nationaltoday.com/wp-content/uploads/2022/04/Albert-Einstein-Birthday-1200x834.jpg.webp'),
            );
          } else {
            return const Center(
              child: Text('Screen Under 600'),
            );
          }
        },
      ),
    );
  }
}
