import 'package:flutter/material.dart';
import 'package:entry_page/presentation/styles/app_colors.dart';
import 'package:entry_page/presentation/styles/app_text_styles.dart';

class ContinueButton extends StatelessWidget {
  final double screenWidth;
  final double screenHeight;
  final VoidCallback onPressed;

  const ContinueButton({
    Key? key,
    required this.screenWidth,
    required this.screenHeight,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double buttonWidth = screenWidth * (328 / 360);
    final double buttonHeight = screenHeight * (50 / 800);

    return SizedBox(
      width: buttonWidth,
      height: buttonHeight,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.blueBackground,
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(14),
          ),
        ),
        child:  Text(
          "Continue",
            style: AppTextStyles.buttonText,
          textAlign: TextAlign.center,
          ),
        ),

    );
  }
}