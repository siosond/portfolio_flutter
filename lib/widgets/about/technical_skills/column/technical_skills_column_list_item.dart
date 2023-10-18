import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio_flutter/widgets/common/noto_sans_text.dart';
import 'package:portfolio_flutter/widgets/experience/common/experience_sub_header.dart';

class SkillsColumnListItem extends StatelessWidget {
  final String body;
  final String svg;
  final String title;

  const SkillsColumnListItem({
    required this.body,
    required this.svg,
    required this.title,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Card(
        child: ListTile(
          onPressed: null,
          title: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: SvgPicture.asset(
                  svg,
                  height: 32,
                  width: 32,
                ),
              ),
              ExperienceSubHeader(title),
            ],
          ),
          subtitle: NotoSansText(body),
        ),
      ),
    );
  }
}
