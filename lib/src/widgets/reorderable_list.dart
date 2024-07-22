import 'package:flutter/material.dart';

class ReorderableListViewWidget extends StatefulWidget {
  const ReorderableListViewWidget({super.key});

  @override
  State<ReorderableListViewWidget> createState() => _ReorderableListViewWidgetState();
}

final List<int> _items = List<int>.generate(10, (int index) => index);

class _ReorderableListViewWidgetState extends State<ReorderableListViewWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          'Reorderable List',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: content(),
    );
  }

  Widget content() {
    return ReorderableListView.builder(
      itemBuilder: (content, index) {
        return ListTile(
          key: ValueKey(_items[index]),
          title: Text('Item ${_items[index]}'),
        );
      },
      itemCount: _items.length,
      onReorder: (oldIndex, newIndex) {
        setState(() {
          if (oldIndex < newIndex) {
            newIndex -= 1;
          }
          final int item = _items.removeAt(oldIndex);
          _items.insert(newIndex, item);
        });
      },
    );
  }
}
