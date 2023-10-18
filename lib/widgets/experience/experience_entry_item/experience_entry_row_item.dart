import 'package:flutter/material.dart';
import 'package:portfolio_flutter/widgets/experience/year_period/year_period.dart';
import 'package:portfolio_flutter/widgets/portfolio/portfolio_card.dart';

class ExperienceEntryRowItem extends StatelessWidget {
  final IconData icon;
  final List<Widget> children;
  final String period;

  const ExperienceEntryRowItem({
    required this.children,
    required this.icon,
    required this.period,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: YearPeriod(
            icon: icon,
            text: period,
          ),
        ),
        Expanded(
          child: PortfolioCard(
            children: children,
          ),
        ),
      ],
    );
  }
}
