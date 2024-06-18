import 'dart:ui';

import 'package:flutter/material.dart';

import '../../../../utils/helper/helper_functions.dart';
import 'gradient_container.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({
    super.key,
    required this.titleText,
    required this.descriptionText,
    required this.imageUrl,
  });

  final String titleText;
  final String descriptionText;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    double screenHeight = HelperFunctions.getScreenHeight(context);
    return ClipRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaY: 20, sigmaX: 20),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: screenHeight * 0.17,
                backgroundImage: NetworkImage(
                  imageUrl,
                ),
              ),
              SizedBox(
                height: screenHeight * 0.05,
              ),
              GradientContainer(
                titleText: titleText,
                descriptionText: descriptionText,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
