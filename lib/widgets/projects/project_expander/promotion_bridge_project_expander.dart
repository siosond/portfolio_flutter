import 'package:easy_localization/easy_localization.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:portfolio_flutter/widgets/projects/project_expander/project_expander.dart';
import 'package:portfolio_flutter/widgets/projects/project_tile/promotion_bridge_project_tile.dart';
import 'package:portfolio_flutter/widgets/projects/technical_stack/flutter_technical_stack.dart';

class PromotionBridgeProjectExpander extends StatelessWidget {
  const PromotionBridgeProjectExpander({super.key});

  @override
  Widget build(BuildContext context) {
    return ProjectExpander(
      trailing: const FlutterTechnicalStack(),
      height: 56,
      text: tr('project_cafe24_promotion_bridge'),
      children: const [
        PromotionBridgeProjectTile(),
      ],
    );
  }
}
