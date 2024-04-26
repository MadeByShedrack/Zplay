// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class OnboardHelper extends StatelessWidget {
  final String? title;
  final String? description;
  final String? imagePath;
  const OnboardHelper({
    super.key,
    this.title,
    this.description,
    this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          imagePath!,
          height: 300,
        ),
        SizedBox(height: 32),
        Text(
          title!,
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 16),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 32),
          child: Text(
            description!,
            style: TextStyle(fontSize: 16),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
