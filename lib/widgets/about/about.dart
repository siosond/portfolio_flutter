// ignore_for_file: avoid_web_libraries_in_flutter

import 'dart:js' as js;

import 'package:easy_localization/easy_localization.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_flutter/constants/urls.dart';
import 'package:portfolio_flutter/widgets/about/skills/skills_list.dart';
import 'package:portfolio_flutter/widgets/about/skills/skills_row.dart';
import 'package:portfolio_flutter/widgets/common/noto_sans_text.dart';
import 'package:portfolio_flutter/widgets/experience/common/experience_header.dart';
import 'package:responsive_builder/responsive_builder.dart';

class About extends StatelessWidget {
  const About({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: NotoSansText(
            tr("about_introduction_header"),
            style: GoogleFonts.notoSans(
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: NotoSansText(
            tr('about_introduction_item'),
            style: GoogleFonts.notoSans(fontSize: 16),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: FilledButton(
            onPressed: () {
              js.context.callMethod('open', [Urls.resume]);
            },
            child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: NotoSansText(
                tr('resume'),
                style: GoogleFonts.notoSans(fontSize: 16),
              ),
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: ExperienceHeader('Here are some of my technical skills:'),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ResponsiveBuilder(
            builder: (context, sizingInformation) {
              if (sizingInformation.isDesktop) {
                return const SkillsRow();
              }
              return const SkillsList();
            },
          ),
        ),
      ],
    );
  }
}
