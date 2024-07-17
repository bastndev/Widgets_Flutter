import 'package:flutter/material.dart';

class SnackBarWidget extends StatelessWidget {
  const SnackBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SnackBar'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: Container(
                padding: const EdgeInsets.all(20),
                height: 90,
                decoration: const BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.all(Radius.circular(14)),
                ),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Wow!",
                        style: TextStyle(
                            fontSize: 19, fontWeight: FontWeight.w700)),
                    Text('Hello, I am a SnackBar!'),
                  ],
                ),
              ),
              behavior: SnackBarBehavior.floating,
              backgroundColor: Colors.transparent,
              elevation: 0,
            ));
          },
          child: const Text("click here"),
        ),
      ),
    );
  }
}
