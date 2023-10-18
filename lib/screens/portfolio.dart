import 'package:easy_localization/easy_localization.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_flutter/widgets/about/about.dart';
import 'package:portfolio_flutter/widgets/common/noto_sans_text.dart';
import 'package:portfolio_flutter/widgets/experience/experience.dart';
import 'package:portfolio_flutter/widgets/projects/projects.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Portfolio extends StatefulWidget {
  const Portfolio({super.key, required this.title});

  final String title;

  @override
  State<Portfolio> createState() => _PortfolioState();
}

class _PortfolioState extends State<Portfolio> {
  var selected = 0;

  @override
  Widget build(BuildContext context) {
    return NavigationView(
      appBar: NavigationAppBar(
        automaticallyImplyLeading: false,
        height: 64,
        title: ResponsiveBuilder(
          builder: (context, sizingInformation) {
            if (sizingInformation.isMobile) {
              return NotoSansText(
                widget.title,
                style: GoogleFonts.notoSans(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              );
            }
            return Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: NotoSansText(
                widget.title,
                style: GoogleFonts.notoSans(
                  fontSize: 24,
                ),
              ),
            );
          },
        ),
      ),
      pane: NavigationPane(
        selected: selected,
        onChanged: (value) {
          setState(() {
            selected = value;
          });
        }, // displayMode: PaneDisplayMode.top,
        items: [
          PaneItem(
            icon: const Icon(Icons.person),
            title: NotoSansText(tr('about')),
            body: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.1,
                  vertical: MediaQuery.of(context).size.height * 0.05,
                ),
                child: const About(),
              ),
            ),
          ),
          PaneItem(
            icon: const Icon(Icons.work),
            title: NotoSansText(tr('experience')),
            body: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.1,
                  vertical: MediaQuery.of(context).size.height * 0.05,
                ),
                child: const Experience(),
              ),
            ),
          ),
          // PaneItemSeparator(),
          PaneItem(
            icon: const Icon(Icons.terminal),
            title: NotoSansText(tr('projects')),
            body: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.1,
                  vertical: MediaQuery.of(context).size.height * 0.05,
                ),
                child: const Projects(),
              ),
            ),
          ),
          // PaneItemSeparator(),
          PaneItem(
            icon: const Icon(Icons.message),
            title: NotoSansText(tr('contact')),
            body: NotoSansText(tr('contact')),
          ),
        ],
      ),
    );
  }
}
