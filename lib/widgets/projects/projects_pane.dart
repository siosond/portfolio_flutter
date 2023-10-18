import 'package:easy_localization/easy_localization.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:portfolio_flutter/widgets/portfolio/portfolio_medium_header.dart';
import 'package:portfolio_flutter/widgets/portfolio/portfolio_text.dart';
import 'package:portfolio_flutter/widgets/projects/project_expander/cafe24_crew_apps_project_expander.dart';
import 'package:portfolio_flutter/widgets/projects/project_expander/plusapp_project_expander.dart';
import 'package:portfolio_flutter/widgets/projects/project_expander/promotion_bridge_project_expander.dart';

class ProjectsPane extends StatelessWidget {
  const ProjectsPane({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: PortfolioMediumHeader(tr("project_header")),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: PortfolioText(tr('project_cafe24_sub')),
        ),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: PlusAppProjectExpander(),
        ),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Cafe24CrewAppsProjectExpander(),
        ),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: PromotionBridgeProjectExpander(),
        ),
      ],
    );
  }
}
