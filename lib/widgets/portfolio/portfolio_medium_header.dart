import 'package:fluent_ui/fluent_ui.dart';
import 'package:google_fonts/google_fonts.dart';

class PortfolioMediumHeader extends StatelessWidget {
  final String text;

  const PortfolioMediumHeader(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.notoSans(
        fontSize: 24,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
