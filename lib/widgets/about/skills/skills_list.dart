import 'package:easy_localization/easy_localization.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio_flutter/constants/assets.dart';
import 'package:portfolio_flutter/widgets/common/noto_sans_text.dart';
import 'package:portfolio_flutter/widgets/experience/common/experience_sub_header.dart';

class SkillsList extends StatelessWidget {
  const SkillsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          child: ListTile(
            onPressed: null,
            title: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: SvgPicture.asset(
                    Assets.kotlin,
                    height: 32,
                    width: 32,
                  ),
                ),
                ExperienceSubHeader(tr('skills_kotlin')),
              ],
            ),
            subtitle: NotoSansText(tr('about_skills_kotlin_item')),
          ),
        ),
        Card(
          child: ListTile(
            onPressed: null,
            title: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: SvgPicture.asset(
                    Assets.java,
                    height: 32,
                    width: 32,
                  ),
                ),
                ExperienceSubHeader(tr('skills_java')),
              ],
            ),
            subtitle: NotoSansText(tr('about_skills_java_item')),
          ),
        ),
        Card(
          child: ListTile(
            onPressed: null,
            title: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: SvgPicture.asset(
                    Assets.flutter,
                    height: 32,
                    width: 32,
                  ),
                ),
                ExperienceSubHeader(tr('skills_flutter')),
              ],
            ),
            subtitle: NotoSansText(tr('about_skills_flutter_item')),
          ),
        ),
        Card(
          child: ListTile(
            onPressed: null,
            title: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: SvgPicture.asset(
                    Assets.laravel,
                    height: 32,
                    width: 32,
                  ),
                ),
                ExperienceSubHeader(tr('skills_laravel')),
              ],
            ),
            subtitle: NotoSansText(tr('about_skills_laravel_item')),
          ),
        ),
        Card(
          child: ListTile(
            onPressed: null,
            title: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: SvgPicture.asset(
                    Assets.javascript,
                    height: 32,
                    width: 32,
                  ),
                ),
                ExperienceSubHeader(tr('skills_javascript')),
              ],
            ),
            subtitle: NotoSansText(tr('about_skills_javascript_item')),
          ),
        ),
      ],
    );
  }
}
