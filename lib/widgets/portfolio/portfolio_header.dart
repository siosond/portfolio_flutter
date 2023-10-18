import 'package:fluent_ui/fluent_ui.dart';
import 'package:google_fonts/google_fonts.dart';

class PortfolioHeader extends StatelessWidget {
  final String text;

  const PortfolioHeader(
    this.text, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.notoSans(
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
