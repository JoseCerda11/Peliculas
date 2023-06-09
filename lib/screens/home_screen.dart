import 'package:flutter/material.dart';
import 'package:peliculas/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: const Text('Peliculas en cines'),
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.search))
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: const [
              //TODO: CardSwiper
              CardSwiper(),
              SizedBox(
                height: 20,
              ),
              //TODO: Listado horizontal de peliculas
              MovieSlider(),
            ],
          ),
        ));
  }
}
