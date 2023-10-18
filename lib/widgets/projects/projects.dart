import 'package:easy_localization/easy_localization.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_flutter/widgets/portfolio/portfolio_text.dart';
import 'package:portfolio_flutter/widgets/projects/common/project_expander.dart';
import 'package:portfolio_flutter/widgets/projects/common/project_tech_stack.dart';
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
          child: PortfolioText(
            tr("project_header"),
            style: GoogleFonts.notoSans(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: PortfolioText(
            tr('project_cafe24_sub'),
            style: GoogleFonts.notoSans(fontSize: 16),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ProjectExpander(
            height: 344,
            text: tr('project_cafe24_plusapp'),
            initiallyExpanded: true,
            children: [
              ProjectTile(
                image: 'images/plusapp/yg-select.webp',
                name: tr('project_cafe24_plusapp_yg_select_app'),
                url:
                    'https://play.google.com/store/apps/details?id=com.makeshop.powerapp.ygnext',
              ),
              ProjectTile(
                image: 'images/plusapp/&store.webp',
                name: tr('project_cafe24_plusapp_&store_app'),
                url:
                    'https://play.google.com/store/apps/details?id=com.cafe24.ec.plussmbm17109',
              ),
              ProjectTile(
                image: 'images/plusapp/andar.webp',
                name: tr('project_cafe24_plusapp_andar_app'),
                url:
                    'https://play.google.com/store/apps/details?id=com.cafe24.ec.plusandar01',
              ),
              ProjectTile(
                image: 'images/plusapp/medicube.webp',
                name: tr('project_cafe24_plusapp_medicube_app'),
                url:
                    'https://play.google.com/store/apps/details?id=com.cafe24.ec.plusmedicube0',
              ),
              ProjectTile(
                image: 'images/plusapp/spao.webp',
                name: tr('project_cafe24_plusapp_spao'),
                url:
                    'https://play.google.com/store/apps/details?id=com.cafe24.ec.plusspao',
              ),
              ProjectTechStack(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(child: PortfolioText('Android')),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(child: PortfolioText('Kotlin')),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(child: PortfolioText('Java')),
                  ),
                ],
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ProjectExpander(
            height: 120,
            text: tr('project_cafe24_crew_apps'),
            children: [
              ProjectTile(
                image: 'images/cafe24-crew-apps.webp',
                name: tr('project_cafe24_crew_apps_app'),
                url:
                    'https://play.google.com/store/apps/details?id=com.cafe24.loginfingerprint',
              ),
              ProjectTechStack(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(child: PortfolioText('Android')),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(child: PortfolioText('Flutter')),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(child: PortfolioText('Dart')),
                  ),
                ],
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ProjectExpander(
            height: 120,
            text: tr('project_cafe24_promotion_bridge'),
            children: [
              ProjectTile(
                image: 'images/promotion-bridge.webp',
                name: tr('project_cafe24_promotion_bridge_app'),
                url:
                    'https://play.google.com/store/apps/details?id=com.cafe24.promotion.bridge',
              ),
              ProjectTechStack(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(child: PortfolioText('Android')),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(child: PortfolioText('Flutter')),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(child: PortfolioText('Dart')),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
