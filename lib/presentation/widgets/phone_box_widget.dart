import 'package:flutter/material.dart';
import 'package:entry_page/presentation/styles/app_colors.dart';
import 'package:entry_page/presentation/styles/app_text_styles.dart';

class PhoneBox extends StatelessWidget {
  final double screenWidth;
  final double screenHeight;

  const PhoneBox({
    Key? key,
    required this.screenWidth,
    required this.screenHeight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double boxHeight = screenHeight * (60 / 800);
    final double flagSize = screenWidth * (24 / 360);

    return Container(
      height: boxHeight,
      padding: EdgeInsets.symmetric(
        horizontal: screenWidth * (12 / 360),
        vertical: screenHeight * (14 / 800),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: AppColors.greyBackground,
      ),
      child: IntrinsicWidth(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'assets/images/bel_flag.png',
              width: flagSize,
              height: flagSize,
              fit: BoxFit.cover,
            ),
            SizedBox(width: screenWidth * (8 / 360)),
            Flexible(
              child: Text(
                "+375",
                style: AppTextStyles.phoneCode,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
    );
  }
}