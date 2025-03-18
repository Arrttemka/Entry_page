import 'package:flutter/material.dart';
import 'package:entry_page/presentation/styles/app_text_styles.dart';

class AuthHeader extends StatelessWidget {
  final double screenWidth;
  final double screenHeight;

  const AuthHeader({
    Key? key,
    required this.screenWidth,
    required this.screenHeight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final topTitleOffset = screenHeight * (60 / 800);
    final leftTitleOffset = screenWidth * (16 / 360);
    final topSubtitleOffset = screenHeight * (110 / 800);

    return Stack(
      children: [
        Positioned(
          top: topTitleOffset,
          left: leftTitleOffset,
          child: Text(
            "Let's get started",
            style: AppTextStyles.titleText,
          ),
        ),
        Positioned(
          top: topSubtitleOffset,
          left: leftTitleOffset,
          child: SizedBox(
            width: screenWidth * (286 / 360),
            child: Text(
              "Enter your phone number. We will send you a confirmation code there",
              style: AppTextStyles.subtitleText,
            ),
          ),
        ),
      ],
    );
  }
}