import 'package:flutter/material.dart';

import '../presentation/screens/onboarding/widgets/onboarding_page.dart';
import '../utils/constants/text_strings.dart';

class PagesListProvider extends ChangeNotifier {
  final List<Widget> _pages = const [
    OnboardingPage(
        titleText: TextStrings.firstPageTitleText,
        descriptionText: TextStrings.firstPageDescriptionText,
        imageUrl: TextStrings.firstPageImageUrl),
    OnboardingPage(
        titleText: TextStrings.secondPageTitleText,
        descriptionText: TextStrings.secondPageDescriptionText,
        imageUrl: TextStrings.secondPageImageUrl),
    OnboardingPage(
        titleText: TextStrings.thirdPageTitleText,
        descriptionText: TextStrings.thirdPageDescriptionText,
        imageUrl: TextStrings.thirdPageImageUrl),
  ];

  List<Widget> get pages => _pages;
}