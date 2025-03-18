import 'package:flutter/material.dart';
import 'package:entry_page/presentation/styles/app_colors.dart';
import 'package:entry_page/presentation/styles/app_text_styles.dart';

class PhoneNumberBox extends StatelessWidget {
  final double screenWidth;
  final double screenHeight;

  const PhoneNumberBox({
    Key? key,
    required this.screenWidth,
    required this.screenHeight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double boxHeight = screenHeight * (60 / 800);

    return Container(
      height: boxHeight,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: AppColors.greyBackground,
      ),
      padding: EdgeInsets.all(
        screenWidth * (14 / 360),
      ),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          "Mobile number",
          style: AppTextStyles.phoneNumber,
          overflow: TextOverflow.ellipsis,
        ),
      ),
    );
  }
}