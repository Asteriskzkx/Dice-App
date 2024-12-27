import 'package:flutter/material.dart';
import 'package:myapp/dice_roller.dart';
import 'package:myapp/styled_text.dart';

var startAlignment = Alignment.topLeft;
var endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key});

  static const List<Color> colors = [
    Color(0xFF222831),
    Color(0xFF393E46),
    Color(0xFF00ADB5),
    Color(0xFFEEEEEE)
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: startAlignment, end: endAlignment, colors: colors)),
      child: const Center(child: DiceRoller()),
    );
  }
}
