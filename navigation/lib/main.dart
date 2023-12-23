import 'package:flutter/material.dart';
import 'package:navigation/home_screen.dart';
import 'package:navigation/screen_2.dart';
import 'package:navigation/screen_3.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: MyHome.id,
      routes: {
        MyHome.id: (context) => MyHome(),
        ScreenTwo.id: (context) => const ScreenTwo(),
        ScreenThree.id: (context) => const ScreenThree(),
      },
    );
  }
}
