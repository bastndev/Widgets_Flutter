import 'package:flutter/material.dart';
import 'package:update_flutter/src/views/home_views.dart';
import 'package:update_flutter/src/views/person_views.dart';

class ButtonNavigationBar extends StatefulWidget {
  const ButtonNavigationBar({super.key});

  @override
  State<ButtonNavigationBar> createState() => _ButtonNavigationBarState();
}

class _ButtonNavigationBarState extends State<ButtonNavigationBar> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final screens = [const HomeViews(), const PersonViews()];

    return Scaffold(
      body: IndexedStack(
        index: selectedIndex,
        children: screens,
      ),
      bottomNavigationBar: BottomNavigationBar(
        // type: BottomNavigationBarType.shifting,
        currentIndex: selectedIndex,
        onTap: (int index) {
          setState(() {
            selectedIndex = index;
          });
        },
        elevation: 0,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            activeIcon: Icon(Icons.home_filled, color: Colors.blue),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            activeIcon: Icon(Icons.person_2_outlined, color: Colors.red),
            label: '',
          ),
        ],
      ),
    );
  }
}
