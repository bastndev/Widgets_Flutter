import 'package:flutter/material.dart';

class LimitedBoxWidget extends StatelessWidget {
  const LimitedBoxWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: const Text('LimitedBox Example'),
      ),
      body: content(),
    );
  }

  Widget content() {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            Colors.lightBlueAccent,
            Colors.blueGrey,
          ],
        ),
      ),
      child: const Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: LimitedBox(
            maxHeight: 50,
            maxWidth: 320,
            child: Card(
              child: ListTile(
                leading: Icon(
                  Icons.person,
                  size: 50,
                ),
                title: Text('LimitedBox Example'),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
