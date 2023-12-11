import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_flutter/constants/assets.dart';
import 'package:portfolio_flutter/constants/urls.dart';
import 'package:portfolio_flutter/widgets/projects/project_tile/project_tile.dart';

class SpaoProjectTile extends StatelessWidget {
  const SpaoProjectTile({super.key});

  @override
  Widget build(BuildContext context) {
    return ProjectTile(
      image: Assets.spao,
      name: tr('project_cafe24_plusapp_spao_app'),
      url: Urls.spao,
    );
  }
}
