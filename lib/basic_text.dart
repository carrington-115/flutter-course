import 'package:flutter/material.dart';

class BasicText extends StatelessWidget {
  const BasicText(this.text, {super.key});
  final String text;
  @override
  Widget build(context) {
    return Text(
      text,
      style: const TextStyle(color: Colors.white, fontSize: 24),
    );
  }
}
