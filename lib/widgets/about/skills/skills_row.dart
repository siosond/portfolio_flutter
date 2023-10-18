import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio_flutter/constants/assets.dart';
import 'package:portfolio_flutter/widgets/common/noto_sans_text.dart';
import 'package:portfolio_flutter/widgets/experience/common/experience_card.dart';
import 'package:portfolio_flutter/widgets/experience/common/experience_sub_header.dart';

class SkillsRow extends StatelessWidget {
  const SkillsRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            child: ExperienceCard(children: [
              SvgPicture.asset(
                Assets.kotlin,
                height: 64,
                width: 64,
              ),
              ExperienceSubHeader(tr('skills_kotlin')),
              NotoSansText(tr('about_skills_kotlin_item')),
            ]),
          ),
          Expanded(
            child: ExperienceCard(children: [
              SvgPicture.asset(
                Assets.java,
                height: 64,
                width: 64,
              ),
              ExperienceSubHeader(tr('skills_java')),
              NotoSansText(tr('about_skills_java_item')),
            ]),
          ),
          Expanded(
            child: ExperienceCard(children: [
              SvgPicture.asset(
                Assets.flutter,
                height: 64,
                width: 64,
              ),
              ExperienceSubHeader(tr('skills_flutter')),
              NotoSansText(tr('about_skills_flutter_item')),
            ]),
          ),
          Expanded(
            child: ExperienceCard(children: [
              SvgPicture.asset(
                Assets.laravel,
                height: 64,
                width: 64,
              ),
              ExperienceSubHeader(tr('skills_laravel')),
              NotoSansText(tr('about_skills_laravel_item')),
            ]),
          ),
          Expanded(
            child: ExperienceCard(children: [
              SvgPicture.asset(
                Assets.javascript,
                height: 64,
                width: 64,
              ),
              ExperienceSubHeader(tr('skills_javascript')),
              NotoSansText(tr('about_skills_javascript_item')),
            ]),
          ),
        ],
      ),
    );
  }
}
