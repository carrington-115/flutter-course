import "package:flutter/material.dart";

class DiceClickElement extends StatefulWidget {
  const DiceClickElement({super.key});

  @override
  State<DiceClickElement> createState() {
    return _DiceClickElementState();
  }
}

class _DiceClickElementState extends State<DiceClickElement> {
  String diceImage = 'assets/images/dice-1.png';
  void rollDice() {
    setState(() {
      diceImage = 'assets/images/dice-3.png';
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(diceImage, width: 200),
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
