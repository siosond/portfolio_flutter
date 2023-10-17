import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_flutter/widgets/experience/aptus/experience_aptus.dart';
import 'package:portfolio_flutter/widgets/experience/cafe24/experience_cafe24.dart';
import 'package:portfolio_flutter/widgets/experience/pup/experience_pup.dart';

class Experience extends StatelessWidget {
  const Experience({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Text(
            tr("work_experience"),
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const ExperienceCafe24(),
        const ExperienceAptus(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          child: Text(
            tr("education"),
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const ExperiencePUP(),
      ],
    );
  }
}
