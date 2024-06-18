import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Drawer Widget'),
      ),
      drawer: Drawer(
        child: ListView(),
      ),

      // --- --- --- --- --- Content here || body
      body: Center(
        child: Container(
          height: 200,
          width: 200,
          decoration: BoxDecoration(
            color: Colors.purple.withOpacity(0.8),
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: const Center(
            child: Text('Body and content here !'),
          ),
        ),
      ),
    );
  }
}
