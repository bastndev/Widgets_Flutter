import 'package:flutter/material.dart';

class SwitchWidget extends StatefulWidget {
  const SwitchWidget({super.key});

  @override
  State<SwitchWidget> createState() => _SwitchWidgetState();
}

class _SwitchWidgetState extends State<SwitchWidget> {
  bool _isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text('Switch Widget in Flutter'),
        centerTitle: true,
      ),
      body: Center(
        child: Switch(
          activeColor: Colors.green,
          value: _isSwitched,
          onChanged: (value) {
            setState(() {
              _isSwitched = value;
            });
          },
        ),
      ),
    );
  }
}
