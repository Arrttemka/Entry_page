import 'package:flutter/material.dart';
import 'package:entry_page/presentation/widgets/splash_page_widget.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    final topOffset = screenHeight * (324 / 800);
    final leftOffset = screenWidth * (109 / 360);

    return Scaffold(
      backgroundColor: const Color(0xFFFAFBFC),
      body: Stack(
        children: [
          Positioned(
            top: topOffset,
            left: leftOffset,
            child: const SplashScreenLogo(),
          ),
        ],
      ),
    );
  }
}