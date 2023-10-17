import 'package:flutter/material.dart';

class ExperienceSubHeader extends StatelessWidget {
  final String text;

  const ExperienceSubHeader(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
