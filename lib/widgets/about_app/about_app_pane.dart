import 'package:easy_localization/easy_localization.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/material.dart' as material;
import 'package:package_info_plus/package_info_plus.dart';
import 'package:portfolio_flutter/widgets/portfolio/portfolio_medium_header.dart';
import 'package:portfolio_flutter/widgets/portfolio/portfolio_text.dart';

class AboutAppPane extends StatelessWidget {
  const AboutAppPane({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: PortfolioMediumHeader(tr('portfolio')),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: FutureBuilder(
            future: PackageInfo.fromPlatform(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                return PortfolioText(
                  tr('about_app_version') + snapshot.data!.version,
                );
              }
              return Container();
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: PortfolioMediumHeader(tr('about_app_legal_information')),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: PortfolioText(tr('about_app_disclaimer_flutter')),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: PortfolioText(tr('about_app_disclaimer_dart')),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: PortfolioText(tr('about_app_disclaimer_icon')),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: PortfolioText(tr('about_app_disclaimer_trademark')),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: FilledButton(
            onPressed: () {
              material.showLicensePage(
                context: context,
                applicationName: tr('portfolio'),
              );
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: PortfolioText(tr('about_app_show_all_license')),
            ),
          ),
        ),
      ],
    );
  }
}
