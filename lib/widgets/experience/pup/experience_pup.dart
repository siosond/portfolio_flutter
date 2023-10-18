import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_flutter/widgets/common/noto_sans_text.dart';
import 'package:portfolio_flutter/widgets/experience/common/experience_entry.dart';
import 'package:portfolio_flutter/widgets/experience/common/experience_header.dart';

class ExperiencePUP extends StatelessWidget {
  const ExperiencePUP({super.key});

  @override
  Widget build(BuildContext context) {
    return ExperienceEntry(
      icon: Icons.book,
      period: tr('education_pup_year_period'),
      children: [
        ExperienceHeader(tr('education_pup_header')),
        NotoSansText(tr('education_pup_major')),
      ],
    );
  }
}
