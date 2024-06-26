import 'package:flutter/material.dart';
import 'package:grupo_pesquisa/theme/colors_theme.dart';

class HeadResearchersCard extends StatelessWidget {
  const HeadResearchersCard({
    super.key,
    required this.src,
    required this.name,
    required this.title,
    required this.description,
    required this.isImageAtStart,
  });

  final String src, name, title, description;
  final bool isImageAtStart;

  @override
  Widget build(BuildContext context) {
    double cardWidth = MediaQuery.of(context).size.width * 0.5;

    return Container(
      padding: const EdgeInsets.all(12.5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5.0),
        border: Border.all(width: 0.5, color: Colors.black.withOpacity(0.3)),
      ),
      width: cardWidth,
      child: isImageAtStart
          ? Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(5.0),
                    child: Image.asset(
                      src,
                      width: 150,
                      height: 150,
                    ),
                  ),
                ),
                const SizedBox(width: 8.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      name,
                      style: Theme.of(context).textTheme.titleLarge!.copyWith(
                          color: textColor, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      title,
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium!
                          .copyWith(color: textColor),
                    ),
                    Text(
                      description,
                      style: Theme.of(context)
                          .textTheme
                          .labelSmall!
                          .copyWith(color: textColor),
                    ),
                  ],
                ),
              ],
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      name,
                      style: Theme.of(context).textTheme.titleLarge!.copyWith(
                          color: textColor, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      title,
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium!
                          .copyWith(color: textColor),
                    ),
                    Text(
                      description,
                      style: Theme.of(context)
                          .textTheme
                          .labelSmall!
                          .copyWith(color: textColor),
                    ),
                  ],
                ),
                const SizedBox(width: 8.0),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(5.0),
                    child: Image.asset(
                      src,
                      width: 150,
                      height: 150,
                    ),
                  ),
                ),
              ],
            ),
    );
  }
}

class ResearchersCard extends StatelessWidget {
  const ResearchersCard({
    super.key,
    required this.name,
    required this.title,
    required this.description,
  });

  final String name, title, description;

  @override
  Widget build(BuildContext context) {
    double cardWidth = MediaQuery.of(context).size.width * 0.225;

    return Container(
      padding: const EdgeInsets.all(12.5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5.0),
        border: Border.all(width: 0.5, color: Colors.black.withOpacity(0.3)),
      ),
      height: 200,
      width: cardWidth,
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge!
                      .copyWith(color: textColor, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 4.0),
                Text(
                  title,
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium!
                      .copyWith(color: textColor),
                ),
                const SizedBox(height: 4.0),
                Expanded(
                  child: SingleChildScrollView(
                    child: Text(
                      description,
                      style: Theme.of(context)
                          .textTheme
                          .labelSmall!
                          .copyWith(color: textColor),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
