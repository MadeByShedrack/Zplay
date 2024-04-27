// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:zplay/screens/register.dart';
import 'package:zplay/widgets/onboard_helper.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (_) {
            return RegisterPage();
          }));
        },
        child: Stack(
          children: [
            PageView(
              controller: _pageController,
              onPageChanged: (int page) {
                setState(() {
                  _currentPage = page;
                });
              },
              children: [
                OnboardHelper(
                  title: "Welcome to Zplay",
                  description:
                      "Experience the thrill of virtual betting with zplay.",
                  imagePath: "asset/sport.png",
                ),
                OnboardHelper(
                  title: "Easy to use",
                  description:
                      "zplay offers a simple and intuitive interface for betting.",
                  imagePath: "asset/ball.png",
                ),
                OnboardHelper(
                  title: "Secure and fair",
                  description:
                      "We use a random number generator algorithm to ensure fair play.",
                  imagePath: "asset/basket.png",
                ),
              ],
            ),
            Positioned(
              bottom: 20,
              left: 0,
              right: 0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  3,
                  (index) => Container(
                    width: 8,
                    height: 8,
                    margin: EdgeInsets.symmetric(horizontal: 4),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: _currentPage == index
                          ? Colors.blue.shade800
                          : Colors.blue.withOpacity(0.5),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
