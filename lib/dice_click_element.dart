import "package:flutter/material.dart";
import "dart:math";

final randomizer = Random();

class DiceClickElement extends StatefulWidget {
  const DiceClickElement({super.key});

  @override
  State<DiceClickElement> createState() {
    return _DiceClickElementState();
  }
}

class _DiceClickElementState extends State<DiceClickElement> {
  int diceNumber = 1;
  void rollDice() {
    setState(() {
      diceNumber = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset('assets/images/dice-$diceNumber.png', width: 200),
        SizedBox(height: 20),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            foregroundColor: Colors.white,
            textStyle: TextStyle(fontSize: 24),
          ),
          child: const Text("Click me"),
        ),
      ],
    );
  }
}
