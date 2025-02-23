import 'dart:math';

import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

final random= Random();
class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var activeDiceImage = 2;

  void rollDice() {
    setState(() {
      activeDiceImage = random.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset("assets/images/dice-$activeDiceImage.png", width: 200),
        SizedBox(height: 20),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            foregroundColor: Colors.white,
            padding: EdgeInsets.all(20),
            backgroundColor: const Color.fromARGB(255, 160, 159, 159),
            textStyle: TextStyle(fontSize: 30,color: Colors.black),
          ),
          child: Text('Roll Dice'),
        ),
      ],
    );
  }
}
