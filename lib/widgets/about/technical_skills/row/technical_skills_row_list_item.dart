import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio_flutter/widgets/portfolio/portfolio_card.dart';
import 'package:portfolio_flutter/widgets/portfolio/portfolio_small_header.dart';
import 'package:portfolio_flutter/widgets/portfolio/portfolio_text.dart';

class TechnicalSkillsRowListItem extends StatelessWidget {
  final String body;
  final String svg;
  final String title;

  const TechnicalSkillsRowListItem({
    required this.body,
    required this.svg,
    required this.title,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: PortfolioCard(children: [
          SvgPicture.asset(
            svg,
            height: 64,
            width: 64,
          ),
          PortfolioSmallHeader(title),
          PortfolioText(body),
        ]),
      ),
    );
  }
}
