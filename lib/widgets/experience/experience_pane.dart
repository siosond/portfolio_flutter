import 'package:easy_localization/easy_localization.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:portfolio_flutter/widgets/common/portfolio_medium_header.dart';
import 'package:portfolio_flutter/widgets/experience/education/pup_education_experience.dart';
import 'package:portfolio_flutter/widgets/experience/work/aptus_work_experience.dart';
import 'package:portfolio_flutter/widgets/experience/work/cafe24_work_experience.dart';

class ExperiencePane extends StatelessWidget {
  const ExperiencePane({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: PortfolioMediumHeader(tr("work_experience")),
        ),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Cafe24WorkExperience(),
        ),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: AptusWorkExperience(),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: PortfolioMediumHeader(tr("education")),
        ),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: PupEducationExperience(),
        ),
      ],
    );
  }
}
