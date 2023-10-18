import 'package:easy_localization/easy_localization.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_flutter/widgets/common/noto_sans_text.dart';
import 'package:portfolio_flutter/widgets/projects/common/project_expander.dart';
import 'package:portfolio_flutter/widgets/projects/common/project_tile.dart';

class Projects extends StatelessWidget {
  const Projects({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: NotoSansText(
            tr("proj_header"),
            style: GoogleFonts.notoSans(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: NotoSansText(
            tr('proj_cafe24_sub'),
            style: GoogleFonts.notoSans(fontSize: 16),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ProjectExpander(
            height: 280,
            text: tr('proj_cafe24_plusapp'),
            initiallyExpanded: true,
            children: [
              ProjectTile(
                image: 'images/plusapp/yg-select.webp',
                name: tr('proj_cafe24_plusapp_yg_select_app'),
                url:
                    'https://play.google.com/store/apps/details?id=com.makeshop.powerapp.ygnext',
              ),
              ProjectTile(
                image: 'images/plusapp/&store.webp',
                name: tr('proj_cafe24_plusapp_&store_app'),
                url:
                    'https://play.google.com/store/apps/details?id=com.cafe24.ec.plussmbm17109',
              ),
              ProjectTile(
                image: 'images/plusapp/andar.webp',
                name: tr('proj_cafe24_plusapp_andar_app'),
                url:
                    'https://play.google.com/store/apps/details?id=com.cafe24.ec.plusandar01',
              ),
              ProjectTile(
                image: 'images/plusapp/medicube.webp',
                name: tr('proj_cafe24_plusapp_medicube_app'),
                url:
                    'https://play.google.com/store/apps/details?id=com.cafe24.ec.plusmedicube0',
              ),
              ProjectTile(
                image: 'images/plusapp/spao.webp',
                name: tr('proj_cafe24_plusapp_spao'),
                url:
                    'https://play.google.com/store/apps/details?id=com.cafe24.ec.plusspao',
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ProjectExpander(
            height: 58,
            text: tr('proj_cafe24_crew_apps'),
            children: [
              ProjectTile(
                image: 'images/cafe24-crew-apps.webp',
                name: tr('proj_cafe24_crew_apps_app'),
                url:
                    'https://play.google.com/store/apps/details?id=com.cafe24.loginfingerprint',
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ProjectExpander(
            height: 58,
            text: tr('proj_cafe24_promotion_bridge'),
            children: [
              ProjectTile(
                image: 'images/promotion-bridge.webp',
                name: tr('proj_cafe24_promotion_bridge_app'),
                url:
                    'https://play.google.com/store/apps/details?id=com.cafe24.promotion.bridge',
              ),
            ],
          ),
        ),
      ],
    );
  }
}
