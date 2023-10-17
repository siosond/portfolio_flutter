import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_flutter/widgets/common/noto_sans_text.dart';

class ExperienceHeader extends StatelessWidget {
  final String text;

  const ExperienceHeader(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return NotoSansText(
      text,
      style: GoogleFonts.notoSans(
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
