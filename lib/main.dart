import 'package:flutter/material.dart';
import 'package:onboarding_screen/presentation/screens/onboarding/onboarding_screen.dart';
import 'package:onboarding_screen/providers/pages_list_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(create: (_) => PagesListProvider(),
    builder: (context, _) {
      return const MyApp();
  },),

  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: OnboardingScreen(),
    );
  }
}
