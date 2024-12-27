import 'dart:math';
import 'package:flutter/material.dart';
import 'styled_text.dart';

//Widget class
class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

//State class
class _DiceRollerState extends State<DiceRoller> {
  var activeDiceImage = 'assets/images/dice-1.png';

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          activeDiceImage,
          width: 200,
          height: 200,
        ),
        // const SizedBox(
        //   height: 20,
        // ),
        TextButton(
            onPressed: rollDice,
            style: TextButton.styleFrom(
                foregroundColor: Colors.white38,
                padding: const EdgeInsets.only(top: 20)),
            child: const styled_text("Roll Dice"))
      ],
    );
  }

  void rollDice() {
    setState(() {
      var diceRoll = Random().nextInt(6) + 1;
      activeDiceImage = 'assets/images/dice-$diceRoll.png';
    });
  }
}
