import 'package:flutter/material.dart';
// import 'package:update_flutter/src/screens/widget/columns.dart';
import 'package:update_flutter/src/screens/widget/row.dart';

class HomeWidgets extends StatefulWidget {
  const HomeWidgets({super.key});

  @override
  State<HomeWidgets> createState() => _FulScreenState();
}

class _FulScreenState extends State<HomeWidgets> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Container(
            width: double.infinity,
            color: Colors.black,
            // child: const Columns(),
            child: const RowPractice(),
          ),
        ),
      ),
    );
  }
}
