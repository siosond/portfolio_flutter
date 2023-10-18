import 'package:fluent_ui/fluent_ui.dart';
import 'package:portfolio_flutter/widgets/common/portfolio_card.dart';
import 'package:portfolio_flutter/widgets/experience/year_period/year_period.dart';

class ExperienceEntryColumnItem extends StatelessWidget {
  final IconData icon;
  final List<Widget> children;
  final String period;
  const ExperienceEntryColumnItem({
    required this.children,
    required this.icon,
    required this.period,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        YearPeriod(
          icon: icon,
          text: period,
        ),
        PortfolioCard(
          children: children,
        ),
      ],
    );
  }
}
