import 'package:flutter/material.dart';
import 'package:entry_page/presentation/widgets/auth_header_widget.dart';
import 'package:entry_page/presentation/widgets/phone_box_widget.dart';
import 'package:entry_page/presentation/widgets/phone_number_box_widget.dart';
import 'package:entry_page/presentation/widgets/continue_button_widget.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    final phoneRowTopOffset = screenHeight * (180 / 800);
    final leftOffset = screenWidth * (16 / 360);
    final rightOffset = screenWidth * (16 / 360);
    final buttonTopOffset = screenHeight * (270 / 800);

    return Scaffold(
      backgroundColor: const Color(0xFFFAFBFC),
      body: Stack(
        children: [
          AuthHeader(
            screenWidth: screenWidth,
            screenHeight: screenHeight,
          ),
          Positioned(
            top: phoneRowTopOffset,
            left: leftOffset,
            right: rightOffset,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                PhoneBox(
                  screenWidth: screenWidth,
                  screenHeight: screenHeight,
                ),
                SizedBox(width: screenWidth * (10 / 360)),
                Expanded(
                  child: PhoneNumberBox(
                    screenWidth: screenWidth,
                    screenHeight: screenHeight,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: buttonTopOffset,
            left: leftOffset,
            child: ContinueButton(
              screenWidth: screenWidth,
              screenHeight: screenHeight,
              onPressed: () {
                print('Continue button pressed');
              },
            ),
          ),
        ],
      ),
    );
  }
}