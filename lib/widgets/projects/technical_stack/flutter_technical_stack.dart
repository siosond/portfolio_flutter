import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_flutter/constants/assets.dart';
import 'package:portfolio_flutter/widgets/projects/technical_stack/technical_stack.dart';
import 'package:portfolio_flutter/widgets/projects/technical_stack/technical_stack_item/technical_stack_item.dart';

class FlutterTechnicalStack extends StatelessWidget {
  const FlutterTechnicalStack({super.key});

  @override
  Widget build(BuildContext context) {
    return TechnicalStack(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: TechnicalStackItem(
            tr('skills_flutter'),
            svg: Assets.flutter,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            bottom: 8.0,
            left: 4.0,
            top: 8.0,
          ),
          child: TechnicalStackItem(
            tr('skills_dart'),
            svg: Assets.dart,
          ),
        ),
      ],
    );
  }
}
