import 'package:flutter/material.dart';

class CustomCardImage extends StatelessWidget {
  const CustomCardImage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Card(
      elevation: 10,
      child: Column(
        children: [
          FadeInImage(
            image:
                NetworkImage('https://avatars.githubusercontent.com/bastndev'),
            placeholder: AssetImage('/assets/images/loading.webp'),
          ),
          Image(
              image: NetworkImage(
                  "https://avatars.githubusercontent.com/bastndev")),
        ],
      ),
    );
  }
}
