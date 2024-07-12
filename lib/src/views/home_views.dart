import 'package:flutter/material.dart';

class HomeViews extends StatefulWidget {
  const HomeViews({super.key});

  @override
  State<HomeViews> createState() => _HomeViewsState();
}

class _HomeViewsState extends State<HomeViews> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Home Count: $count'),
          FilledButton.tonal(
            onPressed: () {
              setState(() {
                count++;
              });
            },
            child: const Text(
              'Add Motor',
            ),
          ),
        ],
      ),
    );
  }
}
