import 'package:easy_localization/easy_localization.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_flutter/widgets/about/about_pane.dart';
import 'package:portfolio_flutter/widgets/contact/contact_pane.dart';
import 'package:portfolio_flutter/widgets/experience/experience_pane.dart';
import 'package:portfolio_flutter/widgets/portfolio/portfolio_text.dart';
import 'package:portfolio_flutter/widgets/projects/projects_pane.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Portfolio extends StatefulWidget {
  const Portfolio({super.key, required this.title});

  final String title;

  @override
  State<Portfolio> createState() => _PortfolioState();
}

class _PortfolioState extends State<Portfolio> {
  late Future googleFontsPending;
  var selected = 0;

  @override
  void initState() {
    super.initState();
    setState(() {
      googleFontsPending = GoogleFonts.pendingFonts([
        GoogleFonts.notoSans(),
      ]);
    });
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: googleFontsPending,
      builder: (context, snapshot) {
        if (snapshot.connectionState != ConnectionState.done) {
          return const NavigationView(
            content: Center(
              child: ProgressRing(),
            ),
          );
        }
        return NavigationView(
          appBar: NavigationAppBar(
            automaticallyImplyLeading: false,
            height: 64,
            title: ResponsiveBuilder(
              builder: (context, sizingInformation) {
                if (sizingInformation.isMobile) {
                  return PortfolioText(
                    widget.title,
                    style: GoogleFonts.notoSans(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  );
                }
                return Padding(
                  padding: const EdgeInsets.only(top: 16.0),
                  child: PortfolioText(
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
                title: PortfolioText(tr('about')),
                body: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width * 0.1,
                      vertical: MediaQuery.of(context).size.height * 0.05,
                    ),
                    child: const AboutPane(),
                  ),
                ),
              ),
              PaneItem(
                icon: const Icon(Icons.work),
                title: PortfolioText(tr('work_experience_and_education')),
                body: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width * 0.1,
                      vertical: MediaQuery.of(context).size.height * 0.05,
                    ),
                    child: const ExperiencePane(),
                  ),
                ),
              ),
              // PaneItemSeparator(),
              PaneItem(
                icon: const Icon(Icons.android),
                title: PortfolioText(tr('project_header')),
                body: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width * 0.1,
                      vertical: MediaQuery.of(context).size.height * 0.05,
                    ),
                    child: const ProjectsPane(),
                  ),
                ),
              ),
              // PaneItemSeparator(),
              PaneItem(
                icon: const Icon(Icons.mail),
                title: PortfolioText(tr('contact')),
                body: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width * 0.1,
                      vertical: MediaQuery.of(context).size.height * 0.05,
                    ),
                    child: const ContactPane(),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
