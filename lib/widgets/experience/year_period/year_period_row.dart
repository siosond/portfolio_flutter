import 'package:flutter/material.dart';
import 'package:portfolio_flutter/widgets/portfolio/portfolio_text.dart';

class YearPeriodRow extends StatelessWidget {
  final IconData icon;
  final String text;

  const YearPeriodRow(
    this.text, {
    required this.icon,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(icon),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: PortfolioText(text),
        )
      ],
    );
  }
}
