import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class IconsWidget extends StatelessWidget {
  const IconsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Icons'),
      ),
      body: Center(
        child: Column(
          children: [
            const Icon(
              Icons.star,
              color: Colors.orange,
              size: 90,
            ),
            SvgPicture.asset(
              'assets/images/icons/linke.svg',
              height: 90,
              width: 90,
              color: Colors.orange,
            ),
            SvgPicture.asset(
              'assets/images/icons/github.svg',
              height: 90,
              width: 90,
              color: Colors.blue,
            ),
            SvgPicture.asset(
              'assets/images/icons/tina.svg',
              height: 90,
              width: 90,
              color: Colors.blue,
            ),
            SvgPicture.asset(
              'assets/images/icons/energia.svg',
              height: 90,
              width: 90,
            ),
          ],
        ),
      ),
    );
  }
}

// https://svgl.app/
// https://tabler.io/icons
//https://www.flaticon.es/icon-fonts-mas-descargados?weight=bold&type=uicon