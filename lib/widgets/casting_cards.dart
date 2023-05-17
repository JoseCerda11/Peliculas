import 'package:flutter/material.dart';

class CastingCards extends StatelessWidget {
  const CastingCards({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 178,
      margin: const EdgeInsets.only(bottom: 20),
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return _CastCard();
          }),
    );
  }
}

class _CastCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      width: 110,
      height: 50,
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: FadeInImage(
              height: 130,
              width: 100,
              fit: BoxFit.cover,
              placeholder: const AssetImage('assets/no-image.jpg'),
              image: const AssetImage('assets/no-image.jpg'),
              imageErrorBuilder: (context, error, stackTrace) =>
                  const Text('No se pudo cargar la imagen'),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            'Nombre Autor ashdjkhasd',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
