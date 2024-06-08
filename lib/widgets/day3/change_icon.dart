import 'package:flutter/material.dart';

class ChangeIcon extends StatefulWidget {
  const ChangeIcon({super.key});

  @override
  State<ChangeIcon> createState() => _FulScreenState();
}

class _FulScreenState extends State<ChangeIcon> with TickerProviderStateMixin {
  bool _isPlay = false;
  late AnimationController _controller;

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

//--- --- --- -- -FIXME: Play button change to click and is animated 
  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: () {
          if (_isPlay == false) {
            _controller.forward();
            _isPlay = true;
          } else {
            _controller.reverse();
            _isPlay = false;
          }
        },
        child: AnimatedIcon(
          icon: AnimatedIcons.play_pause,
          progress: _controller,
          size: 50,
        ),
      ),
    );
  }
}
