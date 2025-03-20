import 'dart:async';
import 'package:flutter/material.dart';
import 'package:entry_page/domain/usecases/navigation_usecases.dart';
import 'package:entry_page/injection_container.dart';
import 'package:entry_page/presentation/widgets/splash_page_widget.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final NavigateToAuthUseCase _navigateToAuthUseCase = sl<NavigateToAuthUseCase>();
  final CheckFirstLaunchUseCase _checkFirstLaunchUseCase = sl<CheckFirstLaunchUseCase>();

  @override
  void initState() {
    super.initState();
    _navigateAfterDelay();
  }

  Future<void> _navigateAfterDelay() async {
    bool isFirstLaunch = await _checkFirstLaunchUseCase.execute();

    int delaySeconds = isFirstLaunch ? 3 : 2;

    Timer(Duration(seconds: delaySeconds), () {
      _navigateToAuthUseCase.execute();
    });
  }

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