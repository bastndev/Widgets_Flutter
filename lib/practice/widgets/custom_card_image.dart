import 'package:flutter/material.dart';

class CustomCardImage extends StatelessWidget {
  const CustomCardImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      elevation: 10,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: const Column(
          children: [
            FadeInImage(
              image: NetworkImage(
                  'https://avatars.githubusercontent.com/bastndev'),
              placeholder: AssetImage('assets/images/shimmer.gif'),
              width: double.infinity,
              height: 200,
              fit: BoxFit.cover,
            ),
          ],
        ),
      ),
    );
  }
}
