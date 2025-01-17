import 'package:flutter/material.dart';

class AppThemes {
  static final ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    primaryColor: Colors.black,
    scaffoldBackgroundColor: Colors.black,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.black,
      foregroundColor: Colors.cyanAccent,
      titleTextStyle: TextStyle(
        color: Colors.cyanAccent,
        fontSize: 24,
        fontWeight: FontWeight.bold,
        shadows: [
          Shadow(
            blurRadius: 10.0,
            color: Colors.cyan,
            offset: Offset(2.0, 2.0),
          ),
        ],
      ),
    ),
    cardColor: Colors.grey[900],
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.cyanAccent,
        foregroundColor: Colors.black,
        textStyle: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          shadows: [
            Shadow(
              blurRadius: 5.0,
              color: Colors.cyan,
              offset: Offset(1.5, 1.5),
            ),
          ],
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    ),
    textTheme: const TextTheme(
      bodyMedium: TextStyle(
        fontSize: 16,
        color: Colors.cyanAccent,
        shadows: [
          Shadow(
            blurRadius: 5.0,
            color: Colors.cyan,
            offset: Offset(1.5, 1.5),
          ),
        ],
      ),
    ),
  );

  static final ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    primaryColor: Colors.black,
    scaffoldBackgroundColor: Colors.black,
    brightness: Brightness.dark,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.black,
      foregroundColor: Colors.purpleAccent,
      titleTextStyle: TextStyle(
        color: Colors.purpleAccent,
        fontSize: 24,
        fontWeight: FontWeight.bold,
        shadows: [
          Shadow(
            blurRadius: 10.0,
            color: Colors.purple,
            offset: Offset(2.0, 2.0),
          ),
        ],
      ),
    ),
    cardColor: Colors.grey[850],
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.purpleAccent,
        foregroundColor: Colors.black,
        textStyle: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          shadows: [
            Shadow(
              blurRadius: 5.0,
              color: Colors.purple,
              offset: Offset(1.5, 1.5),
            ),
          ],
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    ),
    textTheme: const TextTheme(
      bodyMedium: TextStyle(
        fontSize: 16,
        color: Colors.purpleAccent,
        shadows: [
          Shadow(
            blurRadius: 5.0,
            color: Colors.purple,
            offset: Offset(1.5, 1.5),
          ),
        ],
      ),
    ),
  );
}
