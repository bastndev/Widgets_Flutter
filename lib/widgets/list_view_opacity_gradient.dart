import 'package:flutter/material.dart';
import 'package:update_flutter/data/db_fake.dart';

class ListViewGradientScreen extends StatelessWidget {
  const ListViewGradientScreen({super.key});

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
          double opacity = 1 - (index / animeList.length);

          return Container(
            color: Colors.purple.withOpacity(opacity),
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
