// pages.dart
import 'package:flutter/material.dart';
import 'package:update_flutter/src/home.dart';
import 'package:update_flutter/src/routes/routes.dart';

import 'package:update_flutter/src/widgets/column.dart';
import 'package:update_flutter/src/widgets/list_view.dart';
import 'package:update_flutter/src/widgets/row.dart';
import 'package:update_flutter/src/widgets/stack.dart';

abstract class Pages {
  static Map<String, Widget Function(BuildContext)> route = {
    Routes.home:     (BuildContext context) => const HomeScreen(),
    Routes.column:   (BuildContext context) => const ColumnWidget(),
    Routes.row:      (BuildContext context) => const RowWidget(),
    Routes.stack:    (BuildContext context) => const StackWidget(),
    Routes.listView: (BuildContext context) => const ListViewWidget(),
  };
}
