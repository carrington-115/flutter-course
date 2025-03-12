import "package:flutter/material.dart";
// import "package:intro_to_dart_and_flutter/basic_text.dart";

// variables
const startAlign = Alignment.topCenter;
const endAlign = Alignment.bottomCenter;

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.colors, {super.key});
  final List<Color> colors;

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
      child: Center(child: Image.asset('assets/images/dice-1.png')),
    );
  }
}
