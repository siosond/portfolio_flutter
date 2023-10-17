import 'package:easy_localization/easy_localization.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_flutter/widgets/common/noto_sans_text.dart';

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
            tr("about"),
            style: GoogleFonts.notoSans(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: NotoSansText(
            tr('about_summary'),
            style: GoogleFonts.notoSans(fontSize: 16),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: FilledButton(
            onPressed: () {},
            child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: NotoSansText(
                tr('resume'),
                style: GoogleFonts.notoSans(
                  fontSize: 16
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
