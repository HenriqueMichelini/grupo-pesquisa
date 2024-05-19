import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grupo_pesquisa/screens/grupo_pesquisa.dart';
import 'package:grupo_pesquisa/theme/colors_theme.dart';

final theme = ThemeData(
  textTheme: GoogleFonts.latoTextTheme(),
  appBarTheme: const AppBarTheme(
    backgroundColor: structureColor,
    toolbarTextStyle: TextStyle(color: Colors.white),
  ),
);

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: theme,
      home: GrupoPesquisa(),
    );
  }
}
