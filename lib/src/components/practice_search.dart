import 'package:flutter/material.dart';

class PracticeSearch extends StatefulWidget {
  const PracticeSearch({super.key});

  @override
  State<PracticeSearch> createState() => _FulScreenState();
}

class _FulScreenState extends State<PracticeSearch> {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: TextField(
        controller: _controller,
        decoration: InputDecoration(
          filled: true,
          fillColor: const Color(0xFFebe8d6),
          prefixIcon: const Icon(Icons.search),
          suffixIcon: IconButton(
            icon: const Icon(Icons.close),
            onPressed: () {
              _controller.clear();
            },
          ),
          hintText: "Search",
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(50.0)),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}
