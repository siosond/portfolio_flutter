import 'package:flutter/material.dart';
import 'package:portfolio_flutter/widgets/common/portfolio_text.dart';

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
        Card(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(icon),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: PortfolioText(text),
        )
      ],
    );
  }
}
