import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:onboarding_screen/presentation/screens/onboarding/widgets/circle_widget.dart';
import 'package:onboarding_screen/utils/helper/helper_functions.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = HelperFunctions.getScreenWidth(context);
    double screenHeight = HelperFunctions.getScreenHeight(context);
    return Scaffold(
      backgroundColor: const Color(0xFF081440),
      body: _buildBody(screenWidth, screenHeight),
    );
  }

  Widget _buildBody(double screenWidth, double screenHeight) {
    return Stack(
      children: [
        Positioned(
          top: -200,
          left: -40,
          child: CircleWidget(
            height: screenHeight * 0.7,
            width: screenWidth * 0.7,
            color: const Color(0xFF552481),
          ),
        ),
        Positioned(
          top: -100,
          right: -40,
          child: CircleWidget(
            height: screenHeight * 0.4,
            width: screenWidth * 0.4,
            color: const Color(0xFF70E6FB),
          ),
        ),
        Positioned(
          top: screenHeight * 0.2,
          right: screenWidth * -0.3,
          child: CircleWidget(
            height: screenHeight * 0.7,
            width: screenWidth * 0.7 ,
            color: const Color(0xFF552481),
          ),
        ),
        Positioned(
          left: screenWidth * -0.1,
          bottom: screenHeight * -0.2,
          child: CircleWidget(
            height: screenHeight * 0.7,
            width: screenWidth * 0.7 ,
            color: const Color(0xFF1F4470),
          ),
        ),

      ],
    );
  }
}
