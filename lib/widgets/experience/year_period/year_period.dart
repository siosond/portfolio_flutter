import 'package:fluent_ui/fluent_ui.dart';
import 'package:portfolio_flutter/widgets/experience/year_period/year_period_column.dart';
import 'package:portfolio_flutter/widgets/experience/year_period/year_period_row.dart';
import 'package:responsive_builder/responsive_builder.dart';

class YearPeriod extends StatelessWidget {
  final IconData icon;
  final String text;

  const YearPeriod({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        return sizingInformation.isMobile ||
            sizingInformation.isTablet ||
            sizingInformation.isSmall
            ? YearPeriodRow(
                text,
                icon: icon,
              )
            : YearPeriodColumn(
                text,
                icon: icon,
              );
      },
    );
  }
}
