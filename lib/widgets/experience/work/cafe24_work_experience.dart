import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_flutter/widgets/experience/experience_entry_item/experience_entry_item.dart';
import 'package:portfolio_flutter/widgets/experience/experience_entry_item/experience_entry_item_contents.dart';
import 'package:portfolio_flutter/widgets/portfolio/portfolio_header.dart';
import 'package:portfolio_flutter/widgets/portfolio/portfolio_small_header.dart';
import 'package:portfolio_flutter/widgets/portfolio/portfolio_text.dart';

class Cafe24WorkExperience extends StatelessWidget {
  const Cafe24WorkExperience({super.key});

  @override
  Widget build(BuildContext context) {
    return ExperienceEntryItem(
      icon: Icons.work_history,
      period: tr('experience_cafe24_year_period'),
      children: [
        PortfolioHeader(tr('experience_cafe24_header')),
        PortfolioSmallHeader(tr('experience_cafe24_app_dev')),
        ExperienceEntryItemContents(
          children: [
            PortfolioText('• ${tr('experience_cafe24_item_1')}'),
            PortfolioText('• ${tr('experience_cafe24_item_2')}'),
            PortfolioText('• ${tr('experience_cafe24_item_3')}'),
            PortfolioText('• ${tr('experience_cafe24_item_4')}'),
          ],
        ),
        PortfolioSmallHeader(tr('experience_cafe24_web_dev')),
        ExperienceEntryItemContents(
          children: [
            PortfolioText('• ${tr('experience_cafe24_item_5')}'),
            PortfolioText('• ${tr('experience_cafe24_item_6')}'),
          ],
        ),
      ],
    );
  }
}
