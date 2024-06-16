import 'package:flutter/material.dart';

class CustomCardImage extends StatelessWidget {
  final String imageUrl;
  const CustomCardImage({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      elevation: 10,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child:  Column(
          children: [
            FadeInImage(
              image: NetworkImage(imageUrl),
              placeholder: const AssetImage('assets/images/shimmer.gif'),
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
