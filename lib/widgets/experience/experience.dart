import 'package:easy_localization/easy_localization.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_flutter/widgets/common/noto_sans_text.dart';
import 'package:portfolio_flutter/widgets/experience/aptus/experience_aptus.dart';
import 'package:portfolio_flutter/widgets/experience/cafe24/experience_cafe24.dart';
import 'package:portfolio_flutter/widgets/experience/pup/experience_pup.dart';

class Experience extends StatelessWidget {
  const Experience({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: NotoSansText(
            tr("work_experience"),
            style: GoogleFonts.notoSans(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: ExperienceCafe24(),
        ),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: ExperienceAptus(),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: NotoSansText(
            tr("education"),
            style: GoogleFonts.notoSans(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: ExperiencePUP(),
        ),
      ],
    );
  }
}
