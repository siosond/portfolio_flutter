import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_flutter/widgets/projects/project_expander/project_expander.dart';
import 'package:portfolio_flutter/widgets/projects/project_tile/cafe24_crew_apps_project_tile.dart';
import 'package:portfolio_flutter/widgets/projects/technical_stack/flutter_technical_stack.dart';

class Cafe24CrewAppsProjectExpander extends StatelessWidget {
  const Cafe24CrewAppsProjectExpander({super.key});

  @override
  Widget build(BuildContext context) {
    return ProjectExpander(
      trailing: const FlutterTechnicalStack(),
      height: 56,
      text: tr('project_cafe24_crew_apps'),
      children: const [
        Cafe24CrewAppsProjectTile(),
      ],
    );
  }
}
