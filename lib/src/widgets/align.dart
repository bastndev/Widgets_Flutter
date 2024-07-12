import 'package:flutter/material.dart';

class AlignWidget extends StatelessWidget {
  const AlignWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 300,
          height: 300,
          decoration: containerWidget(),
          child: const Stack(
            children: [
              Align(
                child: CustomBox(color: Colors.blue),
              ),
              Align(
                alignment: Alignment(0.5, -0.5),
                child: CustomBox(color: Colors.orange),
              ),
              Align(
                alignment: Alignment(0, -0.5),
                child: CustomBox(color: Colors.green),
              ),
              Align(
                alignment: Alignment(-1, 1),
                child: CustomBox(color: Colors.red),
              ),  
            ]
          ),
        ),
      ),
    );
  }

  BoxDecoration containerWidget() {
    return BoxDecoration(
      border: Border.all(
        color: Colors.blueAccent,
        width: 2,
      ),
    );
  }
}

class CustomBox extends StatelessWidget {
  final Color color;

  const CustomBox({
    super.key,
    this.color = Colors.blue,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      width: 50,
      height: 50,
    );
  }
}







/* import 'package:flutter/material.dart';

class AlignWidget extends StatelessWidget {
  const AlignWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AlignWidget'),
      ),
      body: const Align(
        alignment: Alignment(-1,1),
        child: BlueBox(),
      ),
    );
  }
}

class BlueBox extends StatelessWidget {
  const BlueBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      width: 50,
      height: 50,
    );
  }
}
 */