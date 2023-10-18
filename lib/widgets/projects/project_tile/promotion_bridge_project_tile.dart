import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_flutter/constants/assets.dart';
import 'package:portfolio_flutter/constants/urls.dart';
import 'package:portfolio_flutter/widgets/projects/project_tile/project_tile.dart';

class PromotionBridgeProjectTile extends StatelessWidget {
  const PromotionBridgeProjectTile({super.key});

  @override
  Widget build(BuildContext context) {
    return ProjectTile(
      image: Assets.promotionBridge,
      name: tr('project_cafe24_promotion_bridge_app'),
      url: Urls.promotionBridge,
    );
  }
}
