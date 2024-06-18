import 'package:flutter/material.dart';

class CircleWidget extends StatelessWidget {
  const CircleWidget({super.key, required this.height, required this.width, required this.color1, required this.color2,});

  final double height;
  final double width;
  final Color color1;
  final Color color2;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            color1,
            color2,
          ]
        ),
        shape: BoxShape.circle,
      ),
    );
  }
}
