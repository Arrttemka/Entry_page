import 'package:flutter/material.dart';
import 'package:entry_page/widgets/splash_screen_widget.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Получаем размеры экрана для расчёта отступов
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    // Позиционирование по макету (360x800):
    // Отступ сверху: 324 / 800
    // Отступ слева: 109 / 360
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