import 'package:fluent_ui/fluent_ui.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_flutter/widgets/common/portfolio_text.dart';

class PortfolioLargeHeader extends StatelessWidget {
  final String text;

  const PortfolioLargeHeader(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return PortfolioText(
      text,
      style: GoogleFonts.notoSans(
        fontSize: 30,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
