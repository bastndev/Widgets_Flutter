import 'package:flutter/material.dart';

List<Widget> widgetsList(BuildContext context) {
  return [
    ListTile(
      leading: const Icon(Icons.star, color: Colors.amber),
      title: const Text('Layout Builder Widget'),
      trailing: const Icon(Icons.arrow_forward_ios),
      onTap: () {
        Navigator.pushNamed(context, '/layoutWidget');
      },
    ),
    ListTile(
      leading: const Icon(Icons.star),
      title: const Text('Limited Box'),
      trailing: const Icon(Icons.arrow_forward_ios),
      onTap: () {
        Navigator.pushNamed(context, '/limitedBoxWidget');
      },
    ),
    ListTile(
      leading: const Icon(Icons.star),
      title: const Text('Aspect Ratio Widget'),
      trailing: const Icon(Icons.arrow_forward_ios),
      onTap: () {
        Navigator.pushNamed(context, '/aspectRatioWidget');
      },
    ),
    ListTile(
      leading: const Icon(Icons.star),
      title: const Text('Custom Page Widget'),
      trailing: const Icon(Icons.arrow_forward_ios),
      onTap: () {
        Navigator.pushNamed(context, '/customPageWidget');
      },
    ),
    ListTile(
      leading: const Icon(Icons.star),
      title: const Text('Reorderable List View'),
      trailing: const Icon(Icons.arrow_forward_ios),
      onTap: () {
        Navigator.pushNamed(context, '/rdListViewWidget');
      },
    ),
    ListTile(
      leading: const Icon(Icons.star),
      title: const Text('Draggable Widget'),
      trailing: const Icon(Icons.arrow_forward_ios),
      onTap: () {
        Navigator.pushNamed(context, '/draggableWidget');
      },
    ),
    ListTile(
      leading: const Icon(Icons.star),
      title: const Text('Table Widget'),
      trailing: const Icon(Icons.arrow_forward_ios),
      onTap: () {
        Navigator.pushNamed(context, '/tableWidget');
      },
    ),
    ListTile(
      leading: const Icon(Icons.star),
      title: const Text('Fractionally Widget'),
      trailing: const Icon(Icons.arrow_forward_ios),
      onTap: () {
        Navigator.pushNamed(context, '/fractionallyWidget');
      },
    ),
    ListTile(
      leading: const Icon(Icons.star),
      title: const Text('Grid Tile'),
      trailing: const Icon(Icons.arrow_forward_ios),
      onTap: () {
        Navigator.pushNamed(context, '/gridTile');
      },
    ),
    ListTile(
      leading: const Icon(Icons.star),
      title: const Text('Card Widget'),
      trailing: const Icon(Icons.arrow_forward_ios),
      onTap: () {
        Navigator.pushNamed(context, '/cardWidget');
      },
    ),
    ListTile(
      leading: const Icon(Icons.star),
      title: const Text('Flexible Widget'),
      trailing: const Icon(Icons.arrow_forward_ios),
      onTap: () {
        Navigator.pushNamed(context, '/flexibleWidget');
      },
    ),
    ListTile(
      leading: const Icon(Icons.star),
      title: const Text('Expanded widget'),
      trailing: const Icon(Icons.arrow_forward_ios),
      onTap: () {
        Navigator.pushNamed(context, '/expandedWidget');
      },
    ),
    ListTile(
      leading: const Icon(Icons.star),
      title: const Text('Linear Progress'),
      trailing: const Icon(Icons.arrow_forward_ios),
      onTap: () {
        Navigator.pushNamed(context, '/linearProgress');
      },
    ),
    ListTile(
      leading: const Icon(Icons.star),
      title: const Text('Circular Progress'),
      trailing: const Icon(Icons.arrow_forward_ios),
      onTap: () {
        Navigator.pushNamed(context, '/circularProgress');
      },
    ),
    ListTile(
      leading: const Icon(Icons.star),
      title: const Text('SnackBar'),
      trailing: const Icon(Icons.arrow_forward_ios),
      onTap: () {
        Navigator.pushNamed(context, '/snackBarWidget');
      },
    ),
    ListTile(
      leading: const Icon(Icons.star),
      title: const Text('Simple Dialog'),
      trailing: const Icon(Icons.arrow_forward_ios),
      onTap: () {
        Navigator.pushNamed(context, '/simpleDialogWidget');
      },
    ),
    ListTile(
      leading: const Icon(Icons.star),
      title: const Text('Alert Dialog'),
      trailing: const Icon(Icons.arrow_forward_ios),
      onTap: () {
        Navigator.pushNamed(context, '/alertDialogWidget');
      },
    ),
    ListTile(
      leading: const Icon(Icons.star),
      title: const Text('Form Widget'),
      trailing: const Icon(Icons.arrow_forward_ios),
      onTap: () {
        Navigator.pushNamed(context, '/formWidget');
      },
    ),
    ListTile(
      leading: const Icon(Icons.star),
      title: const Text('Slider'),
      trailing: const Icon(Icons.arrow_forward_ios),
      onTap: () {
        Navigator.pushNamed(context, '/sliderWidget');
      },
    ),
    ListTile(
      leading: const Icon(Icons.star),
      title: const Text('Switch'),
      trailing: const Icon(Icons.arrow_forward_ios),
      onTap: () {
        Navigator.pushNamed(context, '/switchWidget');
      },
    ),
    ListTile(
      leading: const Icon(Icons.star),
      title: const Text('Radio'),
      trailing: const Icon(Icons.arrow_forward_ios),
      onTap: () {
        Navigator.pushNamed(context, '/radio');
      },
    ),
    ListTile(
      leading: const Icon(Icons.star),
      title: const Text('Check box'),
      trailing: const Icon(Icons.arrow_forward_ios),
      onTap: () {
        Navigator.pushNamed(context, '/checkBox');
      },
    ),
    ListTile(
      leading: const Icon(Icons.star),
      title: const Text('Text Field'),
      trailing: const Icon(Icons.arrow_forward_ios),
      onTap: () {
        Navigator.pushNamed(context, '/textField');
      },
    ),
    ListTile(
      leading: const Icon(Icons.star),
      title: const Text('Btn Floating'),
      trailing: const Icon(Icons.arrow_forward_ios),
      onTap: () {
        Navigator.pushNamed(context, '/btnFloating');
      },
    ),
    ListTile(
      leading: const Icon(Icons.star),
      title: const Text('Button Navigation Bar'),
      trailing: const Icon(Icons.arrow_forward_ios),
      onTap: () {
        Navigator.pushNamed(context, '/btnNavigationBar');
      },
    ),
    ListTile(
      leading: const Icon(Icons.star),
      title: const Text('Align'),
      trailing: const Icon(Icons.arrow_forward_ios),
      onTap: () {
        Navigator.pushNamed(context, '/align');
      },
    ),
    ListTile(
      leading: const Icon(Icons.star),
      title: const Text('Drawer'),
      trailing: const Icon(Icons.arrow_forward_ios),
      onTap: () {
        Navigator.pushNamed(context, '/drawer');
      },
    ),
    ListTile(
      leading: const Icon(Icons.star),
      title: const Text('AppBar'),
      trailing: const Icon(Icons.arrow_forward_ios),
      onTap: () {
        Navigator.pushNamed(context, '/appBarWidget');
      },
    ),
    ListTile(
      leading: const Icon(Icons.star),
      title: const Text('Icons'),
      trailing: const Icon(Icons.arrow_forward_ios),
      onTap: () {
        Navigator.pushNamed(context, '/iconWidget');
      },
    ),
    ListTile(
      leading: const Icon(Icons.star),
      title: const Text('Images'),
      trailing: const Icon(Icons.arrow_forward_ios),
      onTap: () {
        Navigator.pushNamed(context, '/imgHome');
      },
    ),
    ListTile(
      leading: const Icon(Icons.star),
      title: const Text('grid View'),
      trailing: const Icon(Icons.arrow_forward_ios),
      onTap: () {
        Navigator.pushNamed(context, '/gridViewPr');
      },
    ),
    ListTile(
      leading: const Icon(Icons.star),
      title: const Text('List View'),
      trailing: const Icon(Icons.arrow_forward_ios),
      onTap: () {
        Navigator.pushNamed(context, '/practice');
      },
    ),
    ListTile(
      leading: const Icon(Icons.star),
      title: const Text('Stack'),
      trailing: const Icon(Icons.arrow_forward_ios),
      onTap: () {
        Navigator.pushNamed(context, '/stack');
      },
    ),
    ListTile(
      leading: const Icon(Icons.star),
      title: const Text('Row'),
      trailing: const Icon(Icons.arrow_forward_ios),
      onTap: () {
        Navigator.pushNamed(context, '/row');
      },
    ),
    ListTile(
      leading: const Icon(Icons.star),
      title: const Text('Column'),
      trailing: const Icon(Icons.arrow_forward_ios),
      onTap: () {
        Navigator.pushNamed(context, '/column');
      },
    ),
  ];
}
