import 'package:fluent_ui/fluent_ui.dart';
import 'package:portfolio_flutter/widgets/about/technical_skills/column/technical_skills_column_list.dart';
import 'package:portfolio_flutter/widgets/about/technical_skills/row/technical_skills_row_list.dart';
import 'package:responsive_builder/responsive_builder.dart';

class TechnicalSkillsList extends StatelessWidget {
  const TechnicalSkillsList({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        return sizingInformation.isMobile ||
                sizingInformation.isTablet ||
                sizingInformation.isSmall
            ? const TechnicalSkillsColumnList()
            : const TechnicalSkillsRowList();
      },
    );
  }
}
