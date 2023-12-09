import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';



final colorScheme = ColorScheme.fromSeed(
  seedColor: const Color(0xffF6DC4B),
  secondary: const Color(0xff79853B),
  background: const Color(0xffFFFFED),
  brightness: Brightness.light,
);


final theme = ThemeData().copyWith(
  pageTransitionsTheme: const PageTransitionsTheme(
    builders: {
      TargetPlatform.android:
      CupertinoPageTransitionsBuilder(),
      TargetPlatform.iOS:
      CupertinoPageTransitionsBuilder(),
    },
  ),
  useMaterial3: true,
  textTheme: GoogleFonts.ubuntuTextTheme().copyWith(
      // titleLarge: GoogleFonts.ubuntu().copyWith(
      //   fontWeight: FontWeight.bold,
      // )
  ),
  colorScheme: colorScheme,
  brightness: Brightness.light,
);
