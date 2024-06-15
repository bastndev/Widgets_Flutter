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
            placeholder: AssetImage('assets/images/loading.webp'),
          ),
          SizedBox(
            height: 10,
          ),
          FadeInImage(
            image: NetworkImage(
                'https://mb.cision.com/Public/17861/2698634/adbd256798f87eb9_400x400ar.jpg'),
            placeholder: AssetImage('assets/images/loading.webp'),
          ),
          SizedBox(
            height: 10,
          ),
          FadeInImage(
            image: NetworkImage(
                'https://images.pexels.com/photos/25662349/pexels-photo-25662349/free-photo-of-mercado-nocturno-de-temple-street-hong-kong.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2'),
            placeholder: AssetImage('assets/images/loading.webp'),
          ),
          SizedBox(
            height: 10,
          ),
          FadeInImage(
            image: NetworkImage(
                'https://images.pexels.com/photos/20687864/pexels-photo-20687864/free-photo-of-noche-rascacielos-viaje-viajar.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2'),
            placeholder: AssetImage('assets/images/loading.webp'),
          ),
          SizedBox(
            height: 10,
          ),
          FadeInImage(
            image: NetworkImage(
                'https://images.pexels.com/photos/15700949/pexels-photo-15700949/free-photo-of-ciudad-rascacielos-viaje-viajar.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2'),
            placeholder: AssetImage('assets/images/loading.webp'),
          ),
        ],
      ),
    );
  }
}
