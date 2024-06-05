import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> listTalks = [
      'Gym',
      'Cooking',
      "Reading",
      "Coding",
      "Dancing",
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("Yoe Code"),
      ),
      body: ListView.builder(
        itemCount: listTalks.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(listTalks[index]),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {},
          );
        },
      ),
    );
  }
}
