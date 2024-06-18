import 'package:flutter/material.dart';
import 'package:onboarding_screen/presentation/screens/onboarding/widgets/circle_widget.dart';
import 'package:onboarding_screen/providers/pages_list_provider.dart';
import 'package:onboarding_screen/utils/helper/helper_functions.dart';
import 'package:provider/provider.dart';

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
    final pagesProvider = Provider.of<PagesListProvider>(context);
    return Stack(
      children: [
        Positioned(
          left: screenWidth * -0.2,
          top: screenHeight * -0.2,
          child: CircleWidget(
            height: screenHeight * 0.7,
            width: screenWidth * 0.7,
            color1: const Color(0xFFED02D3),
            color2: const Color(0xFF9C088B),
          ),
        ),
        Positioned(
          top: screenHeight * -0.1,
          right: screenWidth * -0.2,
          child: CircleWidget(
            height: screenHeight * 0.4,
            width: screenWidth * 0.4,
            color1: const Color(0xFF70E6FB),
            color2: const Color(0xFF47B6C8),
          ),
        ),
        Positioned(
          top: screenHeight * 0.2,
          right: screenWidth * -0.3,
          child: CircleWidget(
            height: screenHeight * 0.7,
            width: screenWidth * 0.7,
            color1: const Color(0xFF552481),
            color2: const Color(0xFF3A145E),
          ),
        ),
        Positioned(
          left: screenWidth * -0.1,
          bottom: screenHeight * -0.2,
          child: CircleWidget(
            height: screenHeight * 0.7,
            width: screenWidth * 0.7,
            color1: const Color(0xFF1F4470),
            color2: const Color(0xFF0C325E),
          ),
        ),
        PageView.builder(
          itemCount: pagesProvider.pages.length,
          itemBuilder: (context, index) {
            return pagesProvider.pages[index];
          },
        ),
      ],
    );
  }

}
