import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_flutter/widgets/common/noto_sans_text.dart';
import 'package:portfolio_flutter/widgets/experience/common/experience_entry.dart';
import 'package:portfolio_flutter/widgets/experience/common/experience_header.dart';
import 'package:portfolio_flutter/widgets/experience/common/experience_items.dart';
import 'package:portfolio_flutter/widgets/experience/common/experience_sub_header.dart';

class ExperienceAptus extends StatelessWidget {
  const ExperienceAptus({super.key});

  @override
  Widget build(BuildContext context) {
    return ExperienceEntry(
      icon: Icons.work_history,
      period: tr('exp_aptus_year_period'),
      children: [
        ExperienceHeader(tr('exp_aptus_header')),
        ExperienceSubHeader(tr('exp_aptus_position')),
        ExperienceItems(
          children: [
            NotoSansText('• ${tr('exp_aptus_item_1')}'),
          ],
        ),
      ],
    );
  }
}
