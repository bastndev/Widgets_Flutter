import 'package:flutter/material.dart';

class PracticeSearch extends StatefulWidget {
  const PracticeSearch({super.key});

  @override
  State<PracticeSearch> createState() => _FulScreenState();
}

class _FulScreenState extends State<PracticeSearch> {
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(15.0),
      child: TextField(
        decoration: InputDecoration(
          filled: true,
          fillColor: Color(0xFFebe8d6),
          prefixIcon: Icon(Icons.search),
          suffix: Icon(Icons.close),
          hintText: "Search",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(50.0)),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}
