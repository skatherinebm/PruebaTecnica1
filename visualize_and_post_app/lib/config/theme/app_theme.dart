import 'package:flutter/material.dart';

List<Color> _colorThemes = [
  const Color.fromARGB(255, 212, 206, 206),
  Colors.pink.shade200,
  Colors.blueGrey,
  Colors.lightBlue.shade100,
  Colors.lightGreen,
  Colors.deepPurple.shade300,
  Colors.black54,
  Colors.cyan,
  Colors.teal,
];

//Incluye la configuración del tema de la App
class AppTheme {
  final int selectedColor;

  AppTheme({this.selectedColor = 0})
      : assert(selectedColor >= 0 && selectedColor <= _colorThemes.length - 1,
            'Colors must be btewwn 0 and ${_colorThemes.length - 1}');

  ThemeData theme() {
    return ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
            seedColor: _colorThemes[selectedColor],
            secondary: _colorThemes[selectedColor],
            primary: Colors.blue.shade300),
        brightness: Brightness.light,
        cardTheme: const CardTheme(
          clipBehavior: Clip.antiAlias,
          color: Colors.white,
          shadowColor: Colors.black87,
          elevation: 5,
          surfaceTintColor: Colors.white,
        ));
  }
}
