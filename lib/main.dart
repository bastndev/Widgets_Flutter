import 'package:flutter/material.dart';
import 'package:update_flutter/export.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: _getRoutes(),
      initialRoute: "search",
    );
  }

  Map<String, WidgetBuilder> _getRoutes() {
    return {
      "/": (context) => const LoginScreen(key: Key('LoginScreenKey')),
      "listView": (context) =>
          const ListViewScreen(key: Key('ListViewScreenKey')),
      "lVGradient": (context) =>
          const ListViewGradientScreen(key: Key('opacityGradientKey')),
      "less": (context) => const LessScreen(key: Key('stateLessKey')),
      "ful": (context) => const FulScreen(key: Key('stateFulKey')),
      "save": (context) => const SaveTextScreen(key: Key('saveTextKey')),
      "search": (context) => const SearchScreen(key: Key('saveTextKey')),
    };
  }
}
