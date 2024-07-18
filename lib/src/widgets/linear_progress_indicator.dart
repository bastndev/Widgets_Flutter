import 'package:flutter/material.dart';

class LinearProgressWidget extends StatefulWidget {
  const LinearProgressWidget({super.key});

  @override
  State<LinearProgressWidget> createState() => _LinearProgressWidgetState();
}

class _LinearProgressWidgetState extends State<LinearProgressWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 5),
    )..addListener(() {
        setState(() {});
      });
    _controller.repeat(reverse: true);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LinearProgressWidget'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              LinearProgressIndicator(
                color: Colors.red,
                value: _controller.value,
                backgroundColor: Colors.black,
              ),
              Text('${(_controller.value * 100).toStringAsFixed(0)}%'),
              const SizedBox(height: 20),
              LinearProgressIndicator(
                value: _controller.value,
              ),
              Text('${(_controller.value * 100).toStringAsFixed(0)}%'),
            ],
          ),
        ),
      ),
    );
  }
}
