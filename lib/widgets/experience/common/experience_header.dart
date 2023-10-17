import 'package:flutter/material.dart';

class ExperienceHeader extends StatelessWidget {
  final String text;

  const ExperienceHeader(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
