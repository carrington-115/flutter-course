import "package:flutter/material.dart";
// import "package:intro_to_dart_and_flutter/basic_text.dart";

// variables
const startAlign = Alignment.topCenter;
const endAlign = Alignment.bottomCenter;

class GradientContainer extends StatelessWidget {
  GradientContainer(this.colors, {super.key});
  final List<Color> colors;

  var diceImage = 'assets/images/dice-1.png';
  void rollDice() {
    // handle roll
    diceImage = 'assets/images/dice-3.png';
    print("Changed the dice ....");
  }

  @override // override all the features from StatelessWidget
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          begin: startAlign,
          end: endAlign,
        ),
      ),
      child: Center(
        child: Column(
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
        ),
      ),
    );
  }
}
