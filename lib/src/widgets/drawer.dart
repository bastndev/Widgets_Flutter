import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DrawerWidget'),
        leading: Builder(
          builder: (BuildContext context) {
            return InkWell(
              onTap: () {
                Scaffold.of(context).openDrawer();
              },
              child: Padding(
                padding: const EdgeInsets.only(top: 15, bottom: 15, left: 10),
                child: Image.asset("assets/images/me.jpg"),
              ),
            );
          },
        ),
      ),
      drawer: Drawer(
        child: Container(
          color: Colors.purple[200],
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20.0, top: 10.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.black12,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    width: 70.0,
                    height: 70.0,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
                      child: const FadeInImage(
                        image: NetworkImage(
                            'https://avatars.githubusercontent.com/u/113950039?v=4'),
                        fit: BoxFit.cover,
                        placeholder: AssetImage('assets/images/me.jpg'),
                      ),
                    ),
                  ),
                ),
              ),
              ListTile(
                title: const Text('Home'),
                leading: const Icon(Icons.home),
                onTap: () {
                  Navigator.pushNamed(context, '/');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
