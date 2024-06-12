import 'package:flutter/material.dart';
import 'package:update_flutter/src/utils/home_list_view.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          'Stack Widgets 💙',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView.separated(
        itemCount: widgetsList(context).length,
        separatorBuilder: (context, index) {
          return const Divider(
            color: Colors.black,
            height: 1.0,
          );
        },
        itemBuilder: (context, index) {
          final widgets = widgetsList(context)[index];
          return widgets;
        },
      ),
    );
  }
}
