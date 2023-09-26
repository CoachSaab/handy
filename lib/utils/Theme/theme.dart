import 'package:flutter/material.dart';

ThemeData lightTheme = ThemeData(
    appBarTheme: const AppBarTheme(
        backgroundColor: Color.fromRGBO(184, 192, 255, 1),
        foregroundColor: Color.fromRGBO(63, 78, 114, 1)),
    iconButtonTheme: IconButtonThemeData(
        style: ButtonStyle(
            iconColor: MaterialStatePropertyAll(Color.fromRGBO(63, 78, 114, 1)),
            foregroundColor:
                MaterialStatePropertyAll(Color.fromRGBO(63, 78, 114, 1)))),);


ThemeData darkTheme = ThemeData(scaffoldBackgroundColor: Colors.blueGrey);
