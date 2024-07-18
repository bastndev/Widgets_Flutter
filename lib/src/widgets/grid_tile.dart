import 'package:flutter/material.dart';

class GridTileWidget extends StatelessWidget {
  const GridTileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: const Text('Grid Tile'),
      ),
      body: Center(
        child: SizedBox(
          height: 400,
          width: 300,
          child: GridTile(
            header: Container(
              height: 40,
              color: Colors.black45,
              child: const Center(
                child: Text(
                  'Vietnamese Girl',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            footer: Container(
              height: 40,
              color: Colors.black54,
              child: const Center(
                child: Text(
                  "21 years old | Vietnam",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            child: Image.network(
              'https://media.gettyimages.com/id/599395224/es/foto/young-vietnamese-girl.jpg?s=612x612&w=gi&k=20&c=06RB5W_quadcyew9RAwUViUKfq-7wxuM4G6ssQr8_ys=',
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
