// ignore_for_file: prefer_const_constructors

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:zplay/firebase_options.dart';
import 'package:zplay/screens/onbaording.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
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
