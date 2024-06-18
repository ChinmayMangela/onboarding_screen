import 'package:flutter/material.dart';
import 'package:onboarding_screen/presentation/widgets/text.dart';

class BuildButton extends StatelessWidget {
  const BuildButton({
    super.key,
    required this.onTap, required this.btnText,
  });

  final String btnText;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      child: BuildText(
        text: btnText,
        textSize: 20,
        textColor: Colors.black,
        isBoldFont: false,
      ),
    );
  }
}
