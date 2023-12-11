import 'package:easy_localization/easy_localization.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:portfolio_flutter/widgets/contact/contact_command_bar.dart';
import 'package:portfolio_flutter/widgets/portfolio/portfolio_medium_header.dart';
import 'package:portfolio_flutter/widgets/portfolio/portfolio_text.dart';

class ContactPane extends StatelessWidget {
  const ContactPane({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: PortfolioMediumHeader(tr('contact')),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: PortfolioText(tr('contact_item')),
        ),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: ContactCommandBar(),
        )
      ],
    );
  }
}
