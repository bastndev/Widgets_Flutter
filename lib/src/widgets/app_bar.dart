import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key});
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('AppBarWidget'),
      ),
      body: Container(
        child: const Center(
          child: Text('AppBarWidget 22'),
        ),
      ),
    );
  }
}