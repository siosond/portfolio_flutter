import 'package:easy_localization/easy_localization.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:portfolio_flutter/constants/assets.dart';
import 'package:portfolio_flutter/constants/urls.dart';
import 'package:portfolio_flutter/widgets/projects/project_tile/project_tile.dart';

class Cafe24CrewAppsProjectTile extends StatelessWidget {
  const Cafe24CrewAppsProjectTile({super.key});

  @override
  Widget build(BuildContext context) {
    return ProjectTile(
      image: Assets.crewApps,
      name: tr('project_cafe24_crew_apps_app'),
      url: Urls.crewApps,
    );
  }
}
