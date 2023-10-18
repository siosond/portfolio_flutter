import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_flutter/widgets/experience/experience_entry_item/experience_entry_item.dart';
import 'package:portfolio_flutter/widgets/experience/experience_entry_item/experience_entry_item_contents.dart';
import 'package:portfolio_flutter/widgets/portfolio/portfolio_header.dart';
import 'package:portfolio_flutter/widgets/portfolio/portfolio_small_header.dart';
import 'package:portfolio_flutter/widgets/portfolio/portfolio_text.dart';

class AptusWorkExperience extends StatelessWidget {
  const AptusWorkExperience({super.key});

  @override
  Widget build(BuildContext context) {
    return ExperienceEntryItem(
      icon: Icons.work_history,
      period: tr('experience_aptus_year_period'),
      children: [
        PortfolioHeader(tr('experience_aptus_header')),
        PortfolioSmallHeader(tr('experience_aptus_position')),
        ExperienceEntryItemContents(
          children: [
            PortfolioText('• ${tr('experience_aptus_item_1')}'),
          ],
        ),
      ],
    );
  }
}
