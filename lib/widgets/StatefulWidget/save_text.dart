import 'package:flutter/material.dart';

class SaveTextScreen extends StatefulWidget {
  const SaveTextScreen({super.key});

  @override
  State<SaveTextScreen> createState() => _FulScreenState();
}

class _FulScreenState extends State<SaveTextScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('SaveTextScreen'),
      ),
    );
  }
}
