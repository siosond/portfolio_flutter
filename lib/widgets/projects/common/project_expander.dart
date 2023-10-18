import 'package:fluent_ui/fluent_ui.dart';
import 'package:portfolio_flutter/widgets/experience/common/experience_sub_header.dart';

class ProjectExpander extends StatelessWidget {
  final bool initiallyExpanded;
  final double height;
  final List<Widget> children;
  final String text;

  const ProjectExpander({
    required this.children,
    required this.height,
    required this.text,
    super.key,
    this.initiallyExpanded = false,
  });

  @override
  Widget build(BuildContext context) {
    return Expander(
      header: ExperienceSubHeader(text),
      initiallyExpanded: initiallyExpanded,
      content: SizedBox(
        height: height,
        child: SingleChildScrollView(
          child: Column(
            children: children,
          ),
        ),
      ),
    );
  }
}
