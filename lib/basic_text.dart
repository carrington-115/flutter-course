import 'package:flutter/material.dart';

class BasicText extends StatelessWidget {
  const BasicText({super.key});

  @override
  Widget build(context) {
    return Text(
      "Hello world! How are you? I am Mark",
      style: TextStyle(color: Colors.white, fontSize: 24),
    );
  }
}
