import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio_flutter/widgets/portfolio/portfolio_text.dart';

class TechnicalStackItemStandard extends StatelessWidget {
  final String text;
  final String svg;

  const TechnicalStackItemStandard(
    this.text, {
    super.key,
    required this.svg,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: SvgPicture.asset(
                svg,
                height: 32,
                width: 32,
              ),
            ),
            PortfolioText(
              text,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }
}
