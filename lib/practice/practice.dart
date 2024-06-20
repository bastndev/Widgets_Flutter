import 'package:flutter/material.dart';
import 'package:update_flutter/practice/listview/listview.dart';
import 'package:update_flutter/practice/listview/listview_builder.dart';
import 'package:update_flutter/practice/listview/listview_custom.dart';
import 'package:update_flutter/practice/listview/listview_separated.dart';
import 'package:update_flutter/practice/widgets/drawer2_practice.dart';

class Practice extends StatelessWidget {
  const Practice({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: const Text(
          'Practice 🖤',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: const Icon(Icons.breakfast_dining_sharp),
            title: const Text('ListView.builder'),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ListViewBuilder(),
                ),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.breakfast_dining_sharp),
            title: const Text('ListView.custom'),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ListViewCustom(),
                ),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.breakfast_dining_sharp),
            title: const Text('ListView.separated'),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ListViewSeparated(),
                ),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.breakfast_dining_sharp),
            title: const Text('ListView Practice'),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ListviewPractice(),
                ),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.breakfast_dining_sharp),
            title: const Text('Drawer Practice'),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const DrawerPractice(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
