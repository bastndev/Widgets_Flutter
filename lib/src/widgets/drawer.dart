import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Drawer Widget'),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            Align(
              child: Padding(
                padding:  const EdgeInsets.all(1.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  width: 70.0,
                  height: 70.0,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: const Image(
                      image: NetworkImage('https://avatars.githubusercontent.com/u/113950039?v=4'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
            const ListTile(
              title: Text('Home'),
              leading: Icon(Icons.home),
            ),
            const ListTile(
              title: Text('Profile'),
              leading: Icon(Icons.person),
            ),
          ],
        ),
      ),
    );
  }
}
