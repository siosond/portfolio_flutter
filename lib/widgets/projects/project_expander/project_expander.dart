import 'package:fluent_ui/fluent_ui.dart';
import 'package:portfolio_flutter/widgets/portfolio/portfolio_small_header.dart';

class ProjectExpander extends StatelessWidget {
  final bool initiallyExpanded;
  final double height;
  final List<Widget> children;
  final String text;
  final Widget? trailing;

  const ProjectExpander({
    required this.children,
    required this.height,
    required this.text,
    super.key,
    this.initiallyExpanded = false,
    this.trailing,
  });

  @override
  Widget build(BuildContext context) {
    return Expander(
      trailing: trailing,
      header: PortfolioSmallHeader(text),
      initiallyExpanded: initiallyExpanded,
      content: SizedBox(
        height: height,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: children,
          ),
        ),
      ),
    );
  }
}
