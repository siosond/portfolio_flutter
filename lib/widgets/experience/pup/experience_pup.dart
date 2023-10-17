import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_flutter/widgets/experience/common/experience_entry.dart';
import 'package:portfolio_flutter/widgets/experience/common/experience_header.dart';

class ExperiencePUP extends StatelessWidget {
  const ExperiencePUP({super.key});

  @override
  Widget build(BuildContext context) {
    return ExperienceEntry(
      icon: Icons.book,
      period: tr('edu_pup_year_period'),
      children: [
        ExperienceHeader(tr('edu_pup_header')),
        Text(tr('edu_pup_major')),
      ],
    );
  }
}
