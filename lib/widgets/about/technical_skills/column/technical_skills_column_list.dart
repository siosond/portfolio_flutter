import 'package:easy_localization/easy_localization.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:portfolio_flutter/constants/assets.dart';
import 'package:portfolio_flutter/widgets/about/technical_skills/column/technical_skills_column_list_item.dart';

class TechnicalSkillsColumnList extends StatelessWidget {
  const TechnicalSkillsColumnList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SkillsColumnListItem(
          body: tr('about_skills_kotlin_item'),
          svg: Assets.kotlin,
          title: tr('skills_kotlin'),
        ),
        SkillsColumnListItem(
          body: tr('about_skills_java_item'),
          svg: Assets.java,
          title: tr('skills_java'),
        ),
        SkillsColumnListItem(
          body: tr('about_skills_flutter_item'),
          svg: Assets.flutter,
          title: tr('skills_flutter'),
        ),
        SkillsColumnListItem(
          body: tr('about_skills_laravel_item'),
          svg: Assets.laravel,
          title: tr('skills_laravel'),
        ),
        SkillsColumnListItem(
          body: tr('about_skills_javascript_item'),
          svg: Assets.javascript,
          title: tr('skills_javascript'),
        ),
      ],
    );
  }
}
