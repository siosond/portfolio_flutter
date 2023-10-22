import 'package:flutter/material.dart';
import 'package:portfolio_flutter/widgets/portfolio/portfolio_scroll_view.dart';

class TechnicalStack extends StatelessWidget {
  final List<Widget> children;

  const TechnicalStack({
    required this.children,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PortfolioScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: children,
      ),
    );
  }
}
