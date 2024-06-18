import 'package:flutter/material.dart';
import 'package:onboarding_screen/presentation/widgets/text.dart';

class BuildButton extends StatelessWidget {
  const BuildButton({
    super.key,
    required this.onTap,
  });

  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      child: const BuildText(
        text: 'Next',
        textSize: 20,
        textColor: Colors.black,
        isBoldFont: false,
      ),
    );
  }
}
