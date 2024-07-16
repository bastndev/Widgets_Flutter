import 'package:flutter/material.dart';

class SliderWidget extends StatefulWidget {
  const SliderWidget({super.key});

  @override
  State<SliderWidget> createState() => _SliderWidgetState();
}

class _SliderWidgetState extends State<SliderWidget> {
  double _currentSliderValue = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: const Text(
          'SliderWidget',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: SizedBox(
          width: 300,
          child: SliderTheme(
            data: _customSliderTheme(context),
            child: Slider(
              value: _currentSliderValue,
              max: 100,
              divisions: 90,
              label: _currentSliderValue.round().toString(),
              onChanged: (double value) {
                setState(() {
                  _currentSliderValue = value;
                });
              },
            ),
          ),
        ),
      ),
    );
  }

  SliderThemeData _customSliderTheme(BuildContext context) {
    return SliderTheme.of(context).copyWith(
      trackShape: const RoundedTrackShape(),
      thumbColor: Colors.white,
      overlayColor: const Color.fromARGB(255, 224, 7, 7).withOpacity(0.2),
      valueIndicatorColor: Colors.redAccent,
      thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 12.0),
      overlayShape: const RoundSliderOverlayShape(overlayRadius: 24.0),
      valueIndicatorShape: const PaddleSliderValueIndicatorShape(),
      valueIndicatorTextStyle: const TextStyle(color: Colors.white),
      trackHeight: 20.0,
    );
  }
}

class RoundedTrackShape extends SliderTrackShape {
  const RoundedTrackShape();

  @override
  Rect getPreferredRect({
    required RenderBox parentBox,
    Offset offset = Offset.zero,
    required SliderThemeData sliderTheme,
    bool isEnabled = false,
    bool isDiscrete = false,
  }) {
    final double trackHeight = sliderTheme.trackHeight ?? 2;
    final double trackVerticalCenter =
        offset.dy + (parentBox.size.height - trackHeight) / 2;
    final double trackLeft = offset.dx;
    final double trackRight = offset.dx + parentBox.size.width;
    return Rect.fromLTRB(trackLeft, trackVerticalCenter, trackRight,
        trackVerticalCenter + trackHeight);
  }

  @override
  void paint(
    PaintingContext context,
    Offset offset, {
    required Animation<double> enableAnimation,
    bool isDiscrete = false,
    bool isEnabled = false,
    required RenderBox parentBox,
    Offset? secondaryOffset,
    required SliderThemeData sliderTheme,
    required TextDirection textDirection,
    required Offset thumbCenter,
  }) {
    final Rect trackRect = getPreferredRect(
      parentBox: parentBox,
      offset: offset,
      sliderTheme: sliderTheme,
    );

    final Paint paint = Paint()
      ..shader = const LinearGradient(
        begin: Alignment.centerLeft,
        end: Alignment.centerRight,
        colors: [Colors.yellow, Colors.orange],
      ).createShader(trackRect);

    final RRect roundedRect = RRect.fromRectAndRadius(
      trackRect,
      const Radius.circular(10),
    );

    context.canvas.drawRRect(roundedRect, paint);
  }
}
