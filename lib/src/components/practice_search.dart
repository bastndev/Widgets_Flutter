import 'package:flutter/material.dart';

class PracticeSearch extends StatefulWidget {
  const PracticeSearch({super.key});

  @override
  State<PracticeSearch> createState() => _PracticeSearchState();
}

class _PracticeSearchState extends State<PracticeSearch> {
  final TextEditingController _controller = TextEditingController();
  final FocusNode _focusNode = FocusNode();
  bool _showXButton = false;
  bool _isFocused = false;

  @override
  void initState() {
    super.initState();
    _controller.addListener(_handleTextChanged);
    _focusNode.addListener(_handleFocusChange);
  }

  void _handleTextChanged() {
    setState(() {
      _showXButton = _controller.text.isNotEmpty;
    });
  }

  void _handleFocusChange() {
    setState(() {
      _isFocused = _focusNode.hasFocus;
    });
  }

  @override
  void dispose() {
    _controller.removeListener(_handleTextChanged);
    _focusNode.removeListener(_handleFocusChange);
    _controller.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: TextField(
        controller: _controller,
        focusNode: _focusNode,
        decoration: InputDecoration(
          filled: true,
          fillColor: const Color(0xFFebe8d6),
          prefixIcon: Icon(_isFocused ? Icons.arrow_back : Icons.search),
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
