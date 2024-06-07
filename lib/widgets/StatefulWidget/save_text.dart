// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

class SaveTextScreen extends StatefulWidget {
  const SaveTextScreen({super.key});

  @override
  State<SaveTextScreen> createState() => _FulScreenState();
}

class _FulScreenState extends State<SaveTextScreen> {
  final nameController = TextEditingController(); //-FIXME: that is a variable
  final idController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: const Text('Save Text'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextFormField(
                controller: nameController,
                decoration: const InputDecoration(
                  labelText: 'Name',
                ),
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextFormField(
                controller: idController,
                decoration: const InputDecoration(
                  labelText: 'Description',
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                final name = nameController.text;
                final id = idController.text;
                print('Name: $name, id: $id');
              },
              child: const Text('Save now'),
            ),
          ],
        ),
      ),
    );
  }
}
