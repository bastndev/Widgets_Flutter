import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Padding(
        padding: EdgeInsets.all(15.0),
        child: TextField(
          decoration: InputDecoration(
            filled: true,
            fillColor: Color(0xFFebe8d6),
            hintText: "Search ",
            prefixIcon: Icon(Icons.search),
            // suffixIcon: Icon(Icons.mic),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(50.0),
              ),
              borderSide: BorderSide.none,
            ),
          ),
        ),
      ),
    );
  }
}
