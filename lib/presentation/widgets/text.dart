import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BuildText extends StatelessWidget {
  const BuildText({
    super.key,
    required this.text,
    required this.textColor,
    required this.textSize,
    required this.isBoldFont,
  });

  final String text;
  final Color textColor;
  final double textSize;
  final bool isBoldFont;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.poppins(
        color: textColor,
        fontSize: textSize,
        fontWeight: isBoldFont ? FontWeight.bold : FontWeight.normal,
      ),
    );
  }
}
