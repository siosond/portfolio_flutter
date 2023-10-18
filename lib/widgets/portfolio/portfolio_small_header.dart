import 'package:fluent_ui/fluent_ui.dart';
import 'package:google_fonts/google_fonts.dart';

class PortfolioSmallHeader extends StatelessWidget {
  final String text;

  const PortfolioSmallHeader(
    this.text, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.notoSans(
        fontSize: 16,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
