import 'package:easy_localization/easy_localization.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:portfolio_flutter/constants/assets.dart';
import 'package:portfolio_flutter/constants/urls.dart';
import 'package:portfolio_flutter/widgets/projects/project_tile/project_tile.dart';

class SMStoreProjectTile extends StatelessWidget {
  const SMStoreProjectTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ProjectTile(
      image: Assets.smbm17109,
      name: tr('project_cafe24_plusapp_smbm17109_app'),
      url: Urls.smbm17109,
    );
  }
}
