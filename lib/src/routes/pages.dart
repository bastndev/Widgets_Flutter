import 'package:flutter/material.dart';
import 'package:update_flutter/src/home.dart';
import 'package:update_flutter/src/routes/routes.dart';

import 'package:update_flutter/src/widgets/columns.dart';
import 'package:update_flutter/src/widgets/row.dart';
import 'package:update_flutter/src/widgets/stack.dart';

abstract class Pages {
  static Map<String, Widget Function(BuildContext)> route = {
    Routes.home: (BuildContext context) => const HomeScreen(),

    Routes.columns: (BuildContext context) => const Columns(),
    Routes.row: (BuildContext context) => const RowPractice(),
    Routes.stack: (BuildContext context) => const StackWidget(),
  };
}