import 'package:flutter/material.dart';

class DraggableWidget extends StatelessWidget {
  const DraggableWidget({super.key});

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
      // body: const DragOne(),
      body: const DragTwo(),
    );
  }
}
// --- --- --- --- Drag and drop two

class DragTwo extends StatefulWidget {
  const DragTwo({super.key});

  @override
  State<DragTwo> createState() => _DragTwoState();
}

class _DragTwoState extends State<DragTwo> {
  Offset _offset = const Offset(200, 250);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: LayoutBuilder(
        builder: (context, constraints) {
          return Stack(
            children: [
              Positioned(
                left: _offset.dx,
                top: _offset.dy,
                child: LongPressDraggable(
                  feedback: Image.network(
                    'https://media.gettyimages.com/id/599395224/es/foto/young-vietnamese-girl.jpg?s=612x612&w=gi&k=20&c=06RB5W_quadcyew9RAwUViUKfq-7wxuM4G6ssQr8_ys=',
                    height: 200,
                    color: Colors.grey,
                    colorBlendMode: BlendMode.colorBurn,
                  ),
                  child: Image.network(
                    'https://media.gettyimages.com/id/599395224/es/foto/young-vietnamese-girl.jpg?s=612x612&w=gi&k=20&c=06RB5W_quadcyew9RAwUViUKfq-7wxuM4G6ssQr8_ys=',
                    height: 200,
                  ),
                  onDragEnd: (details) {
                    setState(
                      () {
                        double adjustment = MediaQuery.of(context).size.height -
                            constraints.maxHeight;
                        _offset = Offset(
                            details.offset.dx, details.offset.dy - adjustment);
                      },
                    );
                  },
                ),
              )
            ],
          );
        },
      ),
    );
  }
}

// --- --- --- --- Drag and drop one
class DragOne extends StatefulWidget {
  const DragOne({super.key});

  @override
  State<DragOne> createState() => _DragOneState();
}

class _DragOneState extends State<DragOne> {
  Color caughtColor = Colors.red;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
    );
  }
}
