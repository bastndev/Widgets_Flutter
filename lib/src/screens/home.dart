import 'package:flutter/material.dart';
import 'package:update_flutter/src/components/search.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          Search(),
        ],
      ),
    );
  }
}
