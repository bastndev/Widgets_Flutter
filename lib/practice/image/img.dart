import 'package:flutter/material.dart';
import 'package:update_flutter/practice/image/image_file.dart';
import 'package:update_flutter/practice/image/image_network.dart';

class ImgHome extends StatelessWidget {
  const ImgHome({super.key});

  @override
  Widget build(BuildContext context) {
    final listImage = [
      ListTile(
        leading: const Icon(Icons.image),
        title: const Text('Image Network'),
        trailing: const Icon(Icons.arrow_forward_ios),
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const ImageNetwork()));
        },
      ),
      ListTile(
        leading: const Icon(Icons.image),
        title: const Text('Image file'),
        trailing: const Icon(Icons.arrow_forward_ios),
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const ImageFile()));
        },
      ),
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text('Image Home'),
      ),
      body: ListView.separated(
        itemCount: listImage.length,
        itemBuilder: (context, index) {
          return listImage[index];
        },
        separatorBuilder: (context, index) {
          return const Divider(
            height: 2.0,
            color: Colors.grey,
          );
        },
      ),
      // body: ListView.
    );
  }
}
