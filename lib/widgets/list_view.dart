import 'package:flutter/material.dart';

class ListViewScreen extends StatelessWidget {
  const ListViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List listBook = [
      "Book 1",
      "Book 2",
      "Book 3",
      "Book 4",
      "Book 5",
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text("List View Code"),
      ),
      body: ListView.builder(
        itemCount: listBook.length,
        itemBuilder: (context, index) {
          String talk = listBook[index];
          return ListTile(
            leading: const Icon(Icons.arrow_back_ios),
            title: Text(talk),
          );
        },
      ),
    );
  }
}
