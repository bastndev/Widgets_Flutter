import 'package:flutter/material.dart';

class PersonViews extends StatefulWidget {
  const PersonViews({super.key});

  @override
  State<PersonViews> createState() => _PersonViewsState();
}

class _PersonViewsState extends State<PersonViews> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Person Count: $count'),
          FilledButton.tonal(
            onPressed: () {
              setState(() {
                count++;
              });
            },
            child: const Text(
              'Add More',
            ),
          ),
        ],
      ),
    );
  }
}
