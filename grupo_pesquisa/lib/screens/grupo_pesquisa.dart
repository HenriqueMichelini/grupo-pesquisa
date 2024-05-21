import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:grupo_pesquisa/widgets/custom_app_bar.dart';
import 'package:grupo_pesquisa/theme/colors_theme.dart';
import 'package:grupo_pesquisa/widgets/researcher_card.dart';

final List<Widget> carouselImages = [
  Image.asset('src/carousel-1.jpg', fit: BoxFit.cover),
  Image.asset('src/carousel-2.jpg', fit: BoxFit.cover),
  Image.asset('src/carousel-3.jpg', fit: BoxFit.cover),
];

CarouselSlider carouselSlider = CarouselSlider(
  options: CarouselOptions(height: 400.0),
  items: carouselImages.map((image) {
    return Builder(
      builder: (BuildContext context) {
        return Container(
          width: MediaQuery.of(context).size.width,
          margin: const EdgeInsets.symmetric(horizontal: 5.0),
          child: image,
        );
      },
    );
  }).toList(),
);

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
              carouselSlider,
              const SizedBox(height: 100),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Expanded(
                    child: Divider(
                      color: headLineTextColor,
                      thickness: 1,
                      endIndent: 100,
                      indent: 200,
                    ),
                  ),
                  Text(
                    'ORIENTADORES',
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        fontSize: 48,
                        fontWeight: FontWeight.bold,
                        color: headLineTextColor),
                  ),
                  const Expanded(
                    child: Divider(
                      color: headLineTextColor,
                      thickness: 1,
                      endIndent: 200,
                      indent: 100,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 100),
              //  HeadResearchersCard area
              const Column(
                children: [
                  HeadResearchersCard(
                    src: 'src/Screenshot_1.jpg',
                    name: 'DAVI',
                    title: 'Titulo master',
                    description: 'Descrição muito interessante.',
                    isImageAtStart: true,
                  ),
                  SizedBox(height: 50),
                  HeadResearchersCard(
                    src: 'src/Screenshot_1.jpg',
                    name: 'DAVI',
                    title: 'Titulo master',
                    description: 'Descrição muito interessante.',
                    isImageAtStart: false,
                  )
                ],
              ),
              const SizedBox(height: 100),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Expanded(
                    child: Divider(
                      color: headLineTextColor,
                      thickness: 1,
                      endIndent: 100,
                      indent: 200,
                    ),
                  ),
                  Text(
                    'PESQUISADORES',
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        fontSize: 48,
                        fontWeight: FontWeight.bold,
                        color: headLineTextColor),
                  ),
                  const Expanded(
                    child: Divider(
                      color: headLineTextColor,
                      thickness: 1,
                      endIndent: 200,
                      indent: 100,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 100),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Column(
                    children: [
                      ResearchersCard(
                        name: 'Henrique',
                        title:
                            'Estudante de Sistemas de Informação (7° período)',
                        description: 'asdasdasd',
                      ),
                      SizedBox(height: 50),
                      ResearchersCard(
                        name: 'Henrique',
                        title:
                            'Estudante de Sistemas de Informação (7° período)',
                        description: 'asdasdasd',
                      ),
                    ],
                  ),
                  SizedBox(width: MediaQuery.of(context).size.width * 0.05),
                  const Column(
                    children: [
                      ResearchersCard(
                        name: 'Henrique',
                        title: 'Estudante de',
                        description: 'asdasdasd',
                      ),
                      SizedBox(height: 50),
                      ResearchersCard(
                        name: 'Henrique',
                        title:
                            'Estudante de Sistemas de Informação (7° período)Estudante de Sistemas de Informação (7° período)',
                        description: 'asdasdasd',
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
