import 'package:flutter/material.dart';

import 'font_style.dart';

ThemeData darkEnglishTheme = ThemeData(
  brightness: Brightness.dark,
  scaffoldBackgroundColor: const Color(0xff100B20),
  fontFamily: 'PlayfairDisplay',
  appBarTheme: const AppBarTheme(
      centerTitle: true,
      toolbarHeight: 55,
      elevation: 0,
      backgroundColor: Color(0xff100B20),
      toolbarTextStyle: FontStyles.font20,
      titleTextStyle: FontStyles.font20),
);

ThemeData lightEnglishTheme = ThemeData(
  brightness: Brightness.light,
  scaffoldBackgroundColor: Colors.white,
  fontFamily: 'PlayfairDisplay',
  appBarTheme: const AppBarTheme(
      centerTitle: true,
      toolbarHeight: 55,
      elevation: 0,
      backgroundColor: Colors.white,
      toolbarTextStyle: FontStyles.font20,
      titleTextStyle: FontStyles.font20),
);

ThemeData darkArabicTheme = ThemeData(
  brightness: Brightness.dark,
  scaffoldBackgroundColor: const Color(0xff100B20),
  fontFamily: 'Cairo',
  appBarTheme: const AppBarTheme(
      centerTitle: true,
      toolbarHeight: 55,
      elevation: 0,
      backgroundColor: Color(0xff100B20),
      toolbarTextStyle: FontStyles.font20,
      titleTextStyle: FontStyles.font20),
);

ThemeData lightArabicTheme = ThemeData(
  brightness: Brightness.light,
  scaffoldBackgroundColor: Colors.white,
  fontFamily: 'Cairo',
  appBarTheme: const AppBarTheme(
      centerTitle: true,
      toolbarHeight: 55,
      elevation: 0,
      backgroundColor: Colors.white,
      toolbarTextStyle: FontStyles.font20,
      titleTextStyle: FontStyles.font20),
);
