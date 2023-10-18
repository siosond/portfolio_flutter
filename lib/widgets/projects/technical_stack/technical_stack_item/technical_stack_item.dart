import 'package:fluent_ui/fluent_ui.dart';
import 'package:portfolio_flutter/widgets/projects/technical_stack/technical_stack_item/technical_stack_item_compact.dart';
import 'package:portfolio_flutter/widgets/projects/technical_stack/technical_stack_item/technical_stack_item_standard.dart';
import 'package:responsive_builder/responsive_builder.dart';

class TechnicalStackItem extends StatelessWidget {
  final String text;
  final String svg;

  const TechnicalStackItem(
    this.text, {
    super.key,
    required this.svg,
  });

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        return sizingInformation.isMobile
            ? TechnicalStackItemCompact(svg: svg)
            : TechnicalStackItemStandard(
                text,
                svg: svg,
              );
      },
    );
  }
}
