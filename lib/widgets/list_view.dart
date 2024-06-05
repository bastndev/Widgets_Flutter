import 'package:flutter/material.dart';
import 'package:update_flutter/data/db_fake.dart';

class ListViewScreen extends StatelessWidget {
  const ListViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("List View Code"),
      ),
      body: ListView.builder(
        itemCount: animeList.length,
        itemBuilder: (context, index) {
          String talk = animeList[index];
          return Container(
            color: index % 2 == 0 ? Colors.black12 : Colors.white,
            child: ListTile(
              leading: const Icon(Icons.arrow_back_ios),
              title: Text(talk),
              trailing: const Icon(Icons.alarm),
            ),
          );
        },
      ),
    );
  }
}
