// import 'package:bayam/screens/tabs_screen.dart';
import 'package:bayam/screens/welcome_screen.dart';
import 'package:bayam/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'local_strings_translation.dart';

void main(){
  runApp(const MyApp(),);
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      translations: LocalString(),
      locale: const Locale('fr','FR'),
      title: "Bayam",
      theme: theme,
      home: const WelcomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
