import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_flutter/widgets/common/portfolio_text.dart';
import 'package:portfolio_flutter/widgets/experience/common/experience_entry.dart';
import 'package:portfolio_flutter/widgets/experience/common/experience_header.dart';
import 'package:portfolio_flutter/widgets/experience/common/experience_items.dart';
import 'package:portfolio_flutter/widgets/experience/common/experience_sub_header.dart';

class ExperienceCafe24 extends StatelessWidget {
  const ExperienceCafe24({super.key});

  @override
  Widget build(BuildContext context) {
    return ExperienceEntry(
      icon: Icons.work_history,
      period: tr('experience_cafe24_year_period'),
      children: [
        ExperienceHeader(tr('experience_cafe24_header')),
        ExperienceSubHeader(tr('experience_cafe24_app_dev')),
        ExperienceItems(
          children: [
            PortfolioText('• ${tr('experience_cafe24_item_1')}'),
            PortfolioText('• ${tr('experience_cafe24_item_2')}'),
            PortfolioText('• ${tr('experience_cafe24_item_3')}'),
            PortfolioText('• ${tr('experience_cafe24_item_4')}'),
          ],
        ),
        ExperienceSubHeader(tr('experience_cafe24_web_dev')),
        ExperienceItems(
          children: [
            PortfolioText('• ${tr('experience_cafe24_item_5')}'),
            PortfolioText('• ${tr('experience_cafe24_item_6')}'),
          ],
        ),
      ],
    );
  }
}
