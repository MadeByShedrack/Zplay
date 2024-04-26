// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:zplay/screens/onbaording.dart';

void main() {
  runApp(ZPlayApp());
}

class ZPlayApp extends StatelessWidget {
  const ZPlayApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "ZPlay",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.yellow.shade800,
        ),
      ),
      home: OnboardingScreen(),
    );
  }
}
