import 'package:flutter/material.dart';

AppBar customAppBar(BuildContext context) {
  final verticalDivider = VerticalDivider(
    color: Colors.white.withOpacity(0.8),
    indent: 20,
    endIndent: 20,
    thickness: 0.3,
  );

  Widget iconButton(String src) {
    return IconButton(
      onPressed: () {},
      icon: ImageIcon(
        AssetImage(src),
        size: 20,
        color: Colors.white,
      ),
    );
  }

  return AppBar(
    title: Text(
      'LIA - PD',
      style: Theme.of(context)
          .textTheme
          .headlineSmall!
          .copyWith(color: Colors.white),
    ),
    actions: [
      const Text('TEXTO 1'),
      verticalDivider,
      const Text('TEXTO 2'),
      verticalDivider,
      const Text('TEXTO 3'),
      const SizedBox(width: 15),
      verticalDivider,
      iconButton('src/facebook-icon.png'),
      iconButton('src/instagram-icon.png'),
      iconButton('src/linkedin-icon.png'),
      iconButton('src/twitter-icon.png'),
    ],
  );
}
