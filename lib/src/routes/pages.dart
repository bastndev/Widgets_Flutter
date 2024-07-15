// pages.dart
import 'package:flutter/material.dart';
import 'package:update_flutter/practice/gridViewWidget/gridview.dart';
import 'package:update_flutter/practice/image/img.dart';
import 'package:update_flutter/practice/practice.dart';
import 'package:update_flutter/src/home.dart';
import 'package:update_flutter/src/routes/routes.dart';
import 'package:update_flutter/src/widgets/align.dart';
import 'package:update_flutter/src/widgets/app_bar.dart';
import 'package:update_flutter/src/widgets/bottom_navigation_bar.dart';
import 'package:update_flutter/src/widgets/check_box.dart';

import 'package:update_flutter/src/widgets/column.dart';
import 'package:update_flutter/src/widgets/drawer.dart';
import 'package:update_flutter/src/widgets/floating_action_button.dart';
import 'package:update_flutter/src/widgets/grid_view.dart';
import 'package:update_flutter/src/widgets/icons.dart';
import 'package:update_flutter/src/widgets/images.dart';
import 'package:update_flutter/src/widgets/list_view.dart';
import 'package:update_flutter/src/widgets/row.dart';
import 'package:update_flutter/src/widgets/stack.dart';
import 'package:update_flutter/src/widgets/text_field.dart';

abstract class Pages {
  static Map<String, Widget Function(BuildContext)> route = {
    Routes.home:         (BuildContext context) => const HomeScreen(),
    Routes.column:       (BuildContext context) => const ColumnWidget(),
    Routes.row:          (BuildContext context) => const RowWidget(),
    Routes.stack:        (BuildContext context) => const StackWidget(),
    Routes.listView:     (BuildContext context) => const ListViewWidget(),
    Routes.practice:     (BuildContext context) => const Practice(),
    Routes.gridView:     (BuildContext context) => const GridViewWidget(),
    Routes.gridViewPr:   (BuildContext context) => const GridViewPr(),
    Routes.images:       (BuildContext context) => const ImageWidget(),
    Routes.imgHome:      (BuildContext context) => const ImgHome(),
    Routes.iconWidget:   (BuildContext context) => const IconsWidget(),
    Routes.appBarWidget: (BuildContext context) => const AppBarWidget(),
    Routes.drawer:       (BuildContext context) => const DrawerWidget(),
    Routes.align:        (BuildContext context) => const AlignWidget(),
    Routes.btnNavigationBar:(BuildContext context) => const ButtonNavigationBar(),
    Routes.btnFloating:   (BuildContext context) => const FloatingActionBtn(),
    Routes.textField:    (BuildContext context) => const TextFieldWidget(),
    Routes.checkBox: (BuildContext context) => const CheckBoxWidget(),
  };
}
