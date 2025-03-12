import "package:flutter/material.dart";
import "package:intro_to_dart_and_flutter/gradient_container.dart";

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer([
          Color.fromARGB(255, 119, 16, 9),
          Color.fromARGB(255, 102, 27, 21),
        ]),
      ),
    ),
  );
}
