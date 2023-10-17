import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
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
      period: tr("exp_cafe24_year_period"),
      children: [
        ExperienceHeader(tr("exp_cafe24_header")),
        ExperienceSubHeader(tr("exp_cafe24_app_dev")),
        ExperienceItems(
          children: [
            Text("• ${tr("exp_cafe24_item_1")}"),
            Text("• ${tr("exp_cafe24_item_2")}"),
            Text("• ${tr("exp_cafe24_item_3")}"),
            Text("• ${tr("exp_cafe24_item_4")}"),
          ],
        ),
        ExperienceSubHeader(tr("exp_cafe24_web_dev")),
        ExperienceItems(
          children: [
            Text("• ${tr("exp_cafe24_item_5")}"),
            Text("• ${tr("exp_cafe24_item_6")}"),
          ],
        ),
      ],
    );
  }
}
