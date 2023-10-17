import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_flutter/widgets/common/noto_sans_text.dart';

class ExperienceSubHeader extends StatelessWidget {
  final String text;

  const ExperienceSubHeader(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return NotoSansText(
      text,
      style: GoogleFonts.notoSans(
        fontSize: 16,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
