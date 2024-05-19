import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:grupo_pesquisa/widgets/custom_app_bar.dart';

final List<Widget> carouselImages = [
  Image.asset('src/carousel-1.jpg', fit: BoxFit.cover),
  Image.asset('src/carousel-2.jpg', fit: BoxFit.cover),
  Image.asset('src/carousel-3.jpg', fit: BoxFit.cover),
];

class GrupoPesquisa extends StatelessWidget {
  const GrupoPesquisa({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: customAppBar(context),
      body: ListView(
        children: [
          Column(
            children: [
              CarouselSlider(
                options: CarouselOptions(height: 400.0),
                items: carouselImages.map((image) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                        width: MediaQuery.of(context).size.width,
                        margin: const EdgeInsets.symmetric(horizontal: 5.0),
                        decoration: const BoxDecoration(color: Colors.amber),
                        child: image,
                      );
                    },
                  );
                }).toList(),
              )
            ],
          ),
        ],
      ),
    );
  }
}
