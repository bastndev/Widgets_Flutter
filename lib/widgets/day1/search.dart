import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _FulScreenState();
}

class _FulScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SafeArea(
            child: Padding(
              padding: EdgeInsets.all(15.0),
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0xFFebe8d6),
                  hintText: "Search ",
                  prefixIcon: Icon(Icons.search),
                  suffixIcon: Icon(Icons.mic),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(50.0),
                    ),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
          ),
          // --- --- --- --- -- Content
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 100,
                  color: Colors.red,
                ),
              ),
              Expanded(
                child: Container(
                  height: 100,
                  color: Colors.green,
                ),
              ),
              Expanded(
                child: Container(
                  height: 100,
                  color: Colors.blue,
                ),
              ),
              Expanded(
                child: Container(
                  height: 100,
                  color: Colors.orange,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
