import 'package:flutter/material.dart';
import 'package:update_flutter/widgets/one.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {"/": (context) => const HomePage()},
      initialRoute: "/",
    );
  }
}
