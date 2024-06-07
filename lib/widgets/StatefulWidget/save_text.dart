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
      body: Column(
        children: [
          TextFormField(
            controller: nameController,
            decoration: const InputDecoration(
              labelText: 'Name',
            ),
          ),
          const SizedBox(height: 10),
          TextFormField(
            controller: idController,
            decoration: const InputDecoration(
              labelText: 'Description',
            ),
          ),
          ElevatedButton(
            onPressed: () {
              final name = nameController.text;
              final id = idController.text;
              print('Name: $name');
              print('ID: $id');
            },
            child: const Text('Save '),
          ),
        ],
      ),
    );
  }
}
