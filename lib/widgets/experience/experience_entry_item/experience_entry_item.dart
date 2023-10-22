import 'package:fluent_ui/fluent_ui.dart';
import 'package:portfolio_flutter/widgets/experience/experience_entry_item/experience_entry_column_item.dart';
import 'package:portfolio_flutter/widgets/experience/experience_entry_item/experience_entry_row_item.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ExperienceEntryItem extends StatelessWidget {
  final IconData icon;
  final List<Widget> children;
  final String period;

  const ExperienceEntryItem({
    required this.children,
    required this.icon,
    required this.period,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        return sizingInformation.isMobile ||
                sizingInformation.isTablet ||
                sizingInformation.isSmall
            ? ExperienceEntryColumnItem(
                icon: icon,
                period: period,
                children: children,
              )
            : ExperienceEntryRowItem(
                icon: icon,
                period: period,
                children: children,
              );
      },
    );
  }
}
