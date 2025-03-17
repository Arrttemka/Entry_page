import 'package:flutter/material.dart';

class SplashScreenLogo extends StatelessWidget {
  const SplashScreenLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    final imageWidth = screenWidth * (143 / 360);
    final imageHeight = screenHeight * (152 / 800);

    return Image.asset(
      'assets/images/logo_splash_screen.png',
      width: imageWidth,
      height: imageHeight,
    );
  }
}