import 'package:fluent_ui/fluent_ui.dart';
import 'package:portfolio_flutter/widgets/common/portfolio_text.dart';

class YearPeriodColumn extends StatelessWidget {
  final IconData icon;
  final String text;

  const YearPeriodColumn(
    this.text, {
    required this.icon,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(icon, size: 24),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            width: 90,
            child: Center(
              child: PortfolioText(text),
            ),
          ),
        )
      ],
    );
  }
}
