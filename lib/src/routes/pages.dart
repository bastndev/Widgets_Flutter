// pages.dart
import 'package:flutter/material.dart';
import 'package:update_flutter/src/home.dart';
import 'package:update_flutter/src/widgets/columns.dart';
import 'package:update_flutter/src/widgets/row.dart';
import 'package:update_flutter/src/widgets/stack.dart';

abstract class Pages {
  static Map<String, Widget Function(BuildContext)> route = {
    "/": ( context) => const HomeScreen(),
    "/column": ( context) => const ColumnWidget(),
    "/row": ( context) => const RowPractice(),
    "/stack": ( context) => const StackWidget(),
  };
}
