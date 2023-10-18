import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio_flutter/widgets/common/portfolio_text.dart';
import 'package:portfolio_flutter/widgets/experience/common/experience_card.dart';
import 'package:portfolio_flutter/widgets/experience/common/experience_sub_header.dart';

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
        child: ExperienceCard(children: [
          SvgPicture.asset(
            svg,
            height: 64,
            width: 64,
          ),
          ExperienceSubHeader(title),
          PortfolioText(body),
        ]),
      ),
    );
  }
}
