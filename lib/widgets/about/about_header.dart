import 'package:fluent_ui/fluent_ui.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_flutter/widgets/common/noto_sans_text.dart';

class AboutHeader extends StatelessWidget {
  final String text;

  const AboutHeader(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return NotoSansText(
      text,
      style: GoogleFonts.notoSans(
        fontSize: 30,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
