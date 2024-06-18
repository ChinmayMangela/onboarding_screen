import 'package:flutter/material.dart';
import 'package:onboarding_screen/utils/helper/helper_functions.dart';

import '../../../widgets/text.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer({
    super.key,
    required this.titleText,
    required this.descriptionText,
  });

  final String titleText;
  final String descriptionText;

  @override
  Widget build(BuildContext context) {
    final screenWidth = HelperFunctions.getScreenWidth(context);
    final screenHeight = HelperFunctions.getScreenHeight(context);
    final containerWidth = screenWidth * 0.8;
    final containerHeight = screenHeight * 0.35;
    return Container(
      padding: EdgeInsets.all(screenHeight * 0.05),
      decoration: BoxDecoration(
        gradient: _buildGradient(),
        borderRadius: BorderRadius.circular(30),
      ),
      width: containerWidth,
      height: containerHeight,
      child: _buildGradientContent(screenWidth, screenHeight),
    );
  }

  LinearGradient _buildGradient() {
    return LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [
        Colors.white.withOpacity(0.5),
        Colors.white.withOpacity(0.1),
        Colors.white.withOpacity(0.0),
      ],
    );
  }

  Widget _buildGradientContent(double screenWidth, double screenHeight) {
    const titleTextSize = 30.0;
    const descriptionTextSize = 10.0;
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BuildText(
            text: titleText,
            textColor: Colors.white,
            textSize: titleTextSize,
            isBoldFont: true,
          ),
          SizedBox(
            height: screenHeight * 0.01,
          ),
          BuildText(
            text: descriptionText,
            textColor: Colors.grey.shade300,
            textSize: descriptionTextSize,
            isBoldFont: false,
          ),
          SizedBox(
            height: screenHeight * 0.02,
          ),
        ],
      ),
    );
  }


}
