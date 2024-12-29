import 'package:flutter/material.dart';
import 'package:myapp/dice_roller.dart';
import 'package:myapp/styled_text.dart';

var startAlignment = Alignment.topLeft;
var endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.colors,{super.key});

  final List<Color> colors;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: startAlignment, end: endAlignment, colors: colors),
      ),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}
