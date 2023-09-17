import 'package:flutter/material.dart';
import 'dart:math';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var activeImage = 'images/dice-1.png';

  void rollDice() {
    var diceValue = randomizer.nextInt(6) + 1;
    setState(() {
      activeImage = 'images/dice-$diceValue.png';
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(activeImage, width: 300),
            TextButton(
              onPressed: rollDice,
              style: TextButton.styleFrom(
                padding: const EdgeInsets.only(top: 50),
                foregroundColor: Colors.white,
                textStyle: const TextStyle(fontSize: 30),
              ),
              child: const Text("Roll the Dice"),
            ),
          ],
        );
  }
}