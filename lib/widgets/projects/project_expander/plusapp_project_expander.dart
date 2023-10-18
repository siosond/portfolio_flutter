import 'package:easy_localization/easy_localization.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:portfolio_flutter/widgets/projects/project_expander/project_expander.dart';
import 'package:portfolio_flutter/widgets/projects/project_tile/andar_project_tile.dart';
import 'package:portfolio_flutter/widgets/projects/project_tile/medicube_project_tile.dart';
import 'package:portfolio_flutter/widgets/projects/project_tile/smstore_project_tile.dart';
import 'package:portfolio_flutter/widgets/projects/project_tile/spao_project_tile.dart';
import 'package:portfolio_flutter/widgets/projects/project_tile/ygnext_project_tile.dart';
import 'package:portfolio_flutter/widgets/projects/technical_stack/native_android_technical_stack.dart';

class PlusAppProjectExpander extends StatelessWidget {
  const PlusAppProjectExpander({super.key});

  @override
  Widget build(BuildContext context) {
    return ProjectExpander(
      trailing: const NativeAndroidTechnicalStack(),
      height: 280,
      text: tr('project_cafe24_plusapp'),
      initiallyExpanded: true,
      children: const [
        YGNextProjectTile(),
        SMStoreProjectTile(),
        AndarProjectTile(),
        MedicubeProjectTile(),
        SpaoProjectTile(),
      ],
    );
  }
}
