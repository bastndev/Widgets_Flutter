import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Drawer Widget'),
        leading: Builder(
          builder: (BuildContext context) {
            return InkWell( 
              onTap: () {
                Scaffold.of(context).openDrawer();
              },
              child: SizedBox(
                // These values no longer affect the SVG size directly
                height: 1.0,
                width: 121.0,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: SvgPicture.asset(
                    'assets/images/icons/user-circle.svg',
                    width: 19.0, // Set your desired width
                    height: 2.0, // Set your desired height
                    // color: Colors.blue,
                  ),
                ),
              ),
            );
          },
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            Align(
              child: Padding(
                padding: const EdgeInsets.all(1.0),
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
                      image: NetworkImage(
                          'https://avatars.githubusercontent.com/u/113950039?v=4'),
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
