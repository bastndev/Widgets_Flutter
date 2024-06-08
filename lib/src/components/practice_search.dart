import 'package:flutter/material.dart';

class PracticeSearch extends StatefulWidget {
  const PracticeSearch({super.key});

  @override
  State<PracticeSearch> createState() => _FulScreenState();
}

class _FulScreenState extends State<PracticeSearch> {
  final TextEditingController _controller = TextEditingController();
  bool _showXButton = false;

  @override
  void initState() {
    super.initState();
    _controller.addListener(_handleTextChanged);
  }

  void _handleTextChanged() {
    setState(() {
      _showXButton = _controller.text.isNotEmpty;
    });
  }

  @override
  void dispose() {
    _controller.removeListener(_handleTextChanged);
    _controller.dispose();
    super.dispose();
  }

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
          suffixIcon: _showXButton
              ? IconButton(
                  icon: const Icon(Icons.close),
                  onPressed: () {
                    _controller.clear();
                  },
                )
              : null,
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
