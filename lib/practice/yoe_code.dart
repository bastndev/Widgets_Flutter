import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> listTalks = [
      'Gym',
      'Playing',
      'Cooking',
      "Reading",
      "Coding",
      "Dancing",
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("List View Code"),
      ),
      body: ListView.builder(
        itemCount: listTalks.length,
        itemBuilder: (context, index) {
          String talk = listTalks[index];

          return ListTile(
            title: Text(talk),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {},
          );
        },
      ),
    );
  }
}
