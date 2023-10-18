import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_flutter/widgets/common/portfolio_header.dart';
import 'package:portfolio_flutter/widgets/common/portfolio_text.dart';
import 'package:portfolio_flutter/widgets/experience/experience_entry_item/experience_entry_item.dart';

class PupEducationExperience extends StatelessWidget {
  const PupEducationExperience({super.key});

  @override
  Widget build(BuildContext context) {
    return ExperienceEntryItem(
      icon: Icons.book,
      period: tr('education_pup_year_period'),
      children: [
        PortfolioHeader(tr('education_pup_header')),
        PortfolioText(tr('education_pup_major')),
      ],
    );
  }
}
