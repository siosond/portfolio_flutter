import 'package:easy_localization/easy_localization.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:portfolio_flutter/widgets/about/about_header.dart';
import 'package:portfolio_flutter/widgets/about/resume_button.dart';
import 'package:portfolio_flutter/widgets/about/technical_skills/technical_skills_list.dart';
import 'package:portfolio_flutter/widgets/common/noto_sans_text.dart';
import 'package:portfolio_flutter/widgets/experience/common/experience_header.dart';

class AboutPane extends StatelessWidget {
  const AboutPane({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: AboutHeader(tr("about_introduction_header")),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: NotoSansText(tr('about_introduction_item')),
        ),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: ResumeButton(),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ExperienceHeader(tr('about_skills_header')),
        ),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: TechnicalSkillsList(),
        ),
      ],
    );
  }
}
