import 'package:fluent_ui/fluent_ui.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_flutter/widgets/common/noto_sans_text.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ExperiencePeriod extends StatelessWidget {
  final IconData icon;
  final String text;

  const ExperiencePeriod({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        if (sizingInformation.isMobile) {
          return Row(
            children: [
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(icon),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: NotoSansText(
                  text,
                  style: GoogleFonts.notoSans(fontSize: 16),
                ),
              )
            ],
          );
        }
        return Column(
          children: [
            Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(icon),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: 128,
                child: Center(
                  child: NotoSansText(
                    text,
                    style: GoogleFonts.notoSans(fontSize: 16),
                  ),
                ),
              ),
            )
          ],
        );
      },
    );
  }
}
