import 'package:flutter/material.dart';
import 'package:update_flutter/widgets/list_view.dart';
import 'package:update_flutter/widgets/yoe_code.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: _getRoutes(),
      initialRoute: "listView",
    );
  }

  Map<String, WidgetBuilder> _getRoutes() {
    return {
      "/": (context) => const LoginScreen(key: Key('LoginScreenKey')),
      "listView": (context) =>
          const ListViewScreen(key: Key('ListViewScreenKey')),
    };
  }
}
