import "package:flutter/material.dart";
import "package:intro_to_dart_and_flutter/basic_text.dart";

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key});

  @override // override all the features from StatelessWidget
  Widget build(context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 61, 6, 2),
            Color.fromARGB(255, 126, 5, 1),
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: const Center(child: BasicText()),
    );
  }
}
