import 'package:flutter/material.dart';

class DraggableWidget extends StatefulWidget {
  const DraggableWidget({super.key});

  @override
  State<DraggableWidget> createState() => _DraggableWidgetState();
}

class _DraggableWidgetState extends State<DraggableWidget> {
  Color caughtColor = Colors.red;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          'DraggableWidget',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Draggable(
              data: Colors.orangeAccent,
              onDraggableCanceled: (velocity, offset) {},
              feedback: Container(
                width: 150,
                height: 150,
                color: Colors.orangeAccent.withOpacity(0.5),
                child: const Center(
                  child: Text(
                    'Box 222',
                    style: TextStyle(
                      color: Colors.white,
                      decoration: TextDecoration.none,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
              child: Container(
                  width: 100,
                  height: 100,
                  color: Colors.orangeAccent,
                  child: const Center(
                    child: Text('Box'),
                  )),
            ),
            DragTarget(onAccept: (Color color) {
              caughtColor = color;
            }, builder: (
              BuildContext context,
              List<dynamic> accepted,
              List<dynamic> rejected,
            ) {
              return Container(
                width: 200,
                height: 200,
                color: accepted.isEmpty ? caughtColor : Colors.grey.shade200,
                child: const Center(
                  child: Text('Drag Here!'),
                ),
              );
            })
          ],
        ),
      ),
    );
  }
}
