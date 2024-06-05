import 'package:flutter/material.dart';
import 'package:update_flutter/widgets/one.dart';
import 'package:update_flutter/widgets/two.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: _getRoutes(),
      initialRoute: "/",
    );
  }

  Map<String, WidgetBuilder> _getRoutes() {
    return {
      "/": (context) => const HomePage(key: Key('homePageKey')),
      "login": (context) => const LoginPage(key: Key('loginPageKey')),
    };
  }
}
