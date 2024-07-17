import 'package:flutter/material.dart';

class SimpleDialogWidget extends StatelessWidget {
  const SimpleDialogWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SimpleDialogWidget'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Click here'),
          onPressed: () {
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return SimpleDialog(
                  title: const Text('Choose an option'),
                  children: <Widget>[
                    SimpleDialogOption(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: const Text('Option 1'),
                    ),
                    SimpleDialogOption(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: const Text('Option 2'),
                    ),
                  ],
                );
              },
            );
          },
        ),
      ),
    );
  }
}
