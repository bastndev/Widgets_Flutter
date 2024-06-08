import 'package:flutter/material.dart';
// import 'package:update_flutter/widgets/day2/margin_padding.dart';
import 'package:update_flutter/src/components/practice_search.dart';
import 'package:update_flutter/widgets/day3/change_icon.dart';
// import 'package:update_flutter/src/components/search.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          SafeArea(
            // Search(),
            child: PracticeSearch(),
            // child: MarginPadding(),
          ),
          // --- --- -- --- --  Row here tomorrow
          /* TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'write here',
            ),
          ), */
          // -TODO: practice change icon 
          ChangeIcon()
        ],
      ),
    );
  }
}
