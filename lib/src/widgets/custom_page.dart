import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CustomPageWidget extends StatelessWidget {
  const CustomPageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Custom Page Widget'),
      ),
      body: content(),
    );
  }

  Widget content() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Center(
        child: CustomPaint(
          painter: DemoPainter(),
          child: const Text(
            'This is a Packman',
            style: TextStyle(
              color: Colors.black,
              backgroundColor: Colors.white54,
              fontSize: 30.0,
            ),
          ),
        ),
      ),
    );
  }
}

class DemoPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var center = size / 2;
    var paint = Paint()..color = Colors.yellow;
    canvas.drawArc(
      Rect.fromCenter(
        center: Offset(center.width, center.height),
        width: 250,
        height: 250,
      ),
      0.4,
      2 * 3.14 - 0.8,
      true,
      paint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
