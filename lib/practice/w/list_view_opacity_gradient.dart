import 'package:flutter/material.dart';
import 'package:update_flutter/src/utils/db_fake.dart';
// import 'package:update_flutter/widgets/home_screen.dart';

class ListViewGradientScreen extends StatelessWidget {
  const ListViewGradientScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("List View Anime"),
      ),
      body: ListView.builder(
        itemCount: animeList.length,
        itemBuilder: (context, index) {
          String talk = animeList[index];
          double opacity = 1 - (index / animeList.length);

          return Container(
            color: Colors.orange.withOpacity(opacity),
            child: ListTile(
              leading: const Icon(Icons.arrow_forward_ios),
              title: Text(talk),
              trailing: const Icon(
                Icons.photo_size_select_actual_rounded,
                color: Colors.black,
              ),
              onTap: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) => const HomeScreen(),
                //   ),
                // );
              },
            ),
          );
        },
      ),
    );
  }
}
