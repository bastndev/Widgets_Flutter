import 'package:flutter/material.dart';
import 'package:update_flutter/src/utils/box.dart';

class ListViewWidget extends StatefulWidget {
  const ListViewWidget({super.key});

  @override
  State<ListViewWidget> createState() => _ListViewWidgetState();
}

class _ListViewWidgetState extends State<ListViewWidget> {
  List<Widget> widgets = [
    const Box(
      color: Colors.red,
      number: 1,
      broad: 100.0,
    ),
    const Box(
      color: Colors.blue,
      number: 2,
      broad: 100.0,
    ),
    const Box(
      color: Colors.yellow,
      number: 3,
      broad: 100.0,
    ),
    const Box(
      color: Colors.orange,
      number: 4,
      broad: 100.0,
    ),
    const Box(
      color: Colors.red,
      number: 1,
      broad: 100.0,
    ),
    const Box(
      color: Colors.blue,
      number: 2,
      broad: 100.0,
    ),
    const Box(
      color: Colors.yellow,
      number: 3,
      broad: 100.0,
    ),
    const Box(
      color: Colors.orange,
      number: 4,
      broad: 100.0,
    ),
    const Box(
      color: Colors.red,
      number: 1,
      broad: 100.0,
    ),
    const Box(
      color: Colors.blue,
      number: 2,
      broad: 100.0,
    ),
    const Box(
      color: Colors.yellow,
      number: 3,
      broad: 100.0,
    ),
    const Box(
      color: Colors.orange,
      number: 9,
      broad: 100.0,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView Widget'),
      ),
      // --- --- --- -- ListView Builder
      /* body: ListView.builder(
        // itemExtent: 200.0,
        reverse: true,
        padding: const EdgeInsets.only(right: 10.0, left: 10.0),
        itemCount: widgets.length,
        itemBuilder: (BuildContext context, int index) {
          Widget element = widgets[index];
          return element;
        },
      ), */

      // --- --- --- -- ListView Separated
/*       body: ListView.separated(
        itemCount: widgets.length, // Add this line
        separatorBuilder: (context, index) {
          return Container(
            height: 10.0,
            color: Colors.black.withOpacity(0.5),
          );
        },
        itemBuilder: (BuildContext context, int index) {
          Widget element = widgets[index];
          return element;
        },
      ), */

      // --- --- --- -- List View Builder
      body: ListView.custom(
        childrenDelegate: SliverChildBuilderDelegate(
          (BuildContext context, int index) {
            return widgets[index];
          },
          childCount: 5,
        ),
      ),
    );
  }
}
