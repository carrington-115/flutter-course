import "package:flutter/material.dart";

void main() {
  runApp(const MaterialApp(home: Scaffold(body: GradientContainer())));
}

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
      child: const Center(
        child: Text(
          "Hello world! How are you?",
          style: TextStyle(color: Colors.white, fontSize: 24),
        ),
      ),
    );
  }
}
