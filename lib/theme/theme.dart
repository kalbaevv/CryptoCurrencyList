import 'package:flutter/material.dart';

final darkTheme = ThemeData(
  scaffoldBackgroundColor: const Color.fromARGB(255, 13, 13, 13),
  primarySwatch: Colors.yellow,
  dividerColor: Colors.white24,
  listTileTheme: const ListTileThemeData(iconColor: Colors.white),
  appBarTheme: const AppBarTheme(
      backgroundColor: Color.fromARGB(255, 13, 13, 13),
      titleTextStyle: TextStyle(
          color: Colors.white, fontSize: 20, fontWeight: FontWeight.w700)),
  textTheme: const TextTheme(
      bodyMedium: TextStyle(
          color: Colors.white, fontWeight: FontWeight.w700, fontSize: 20),
      labelSmall: TextStyle(
          color: Colors.white, fontWeight: FontWeight.w700, fontSize: 14)),
  useMaterial3: true,
);
