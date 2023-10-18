import 'package:fluent_ui/fluent_ui.dart';

class PortfolioCard extends StatelessWidget {
  final CrossAxisAlignment crossAxisAlignment;
  final List<Widget> children;

  const PortfolioCard({
    required this.children,
    super.key,
    this.crossAxisAlignment = CrossAxisAlignment.start,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Column(
          crossAxisAlignment: crossAxisAlignment,
          children: children,
        ),
      ),
    );
  }
}
