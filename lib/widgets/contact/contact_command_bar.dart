import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/material.dart' as material;
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio_flutter/constants/assets.dart';
import 'package:portfolio_flutter/constants/urls.dart';
import 'package:portfolio_flutter/utils/url_launcher.dart';
import 'package:portfolio_flutter/widgets/portfolio/portfolio_text.dart';

class ContactCommandBar extends StatelessWidget {
  const ContactCommandBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: CommandBar(
          overflowBehavior: CommandBarOverflowBehavior.dynamicOverflow,
          compactBreakpointWidth: 600,
          primaryItems: [
            CommandBarButton(
              icon: const Icon(
                material.Icons.mail,
                size: 24,
              ),
              label: PortfolioText('Mail'),
              onPressed: () {
                UrlLauncher.launch(Urls.mail);
              },
            ),
            CommandBarButton(
              icon: SvgPicture.asset(
                Assets.github,
                height: 24,
                width: 24,
              ),
              label: PortfolioText('GitHub'),
              onPressed: () {
                UrlLauncher.launch(Urls.github);
              },
            ),
            CommandBarButton(
              icon: Image.asset(
                Assets.linkedIn,
                height: 24,
                width: 24,
              ),
              label: PortfolioText('LinkedIn'),
              onPressed: () {
                UrlLauncher.launch(Urls.linkedIn);
              },
            ),
            CommandBarButton(
              icon: Image.asset(
                Assets.viber,
                height: 24,
                width: 24,
              ),
              label: PortfolioText('Viber'),
              onPressed: () {
                UrlLauncher.launch(Urls.viber);
              },
            ),
          ],
        ),
      ),
    );
  }
}
