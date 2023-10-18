import 'package:fluent_ui/fluent_ui.dart';

class ExperienceCard extends StatelessWidget {
  final List<Widget> children;

  const ExperienceCard({
    required this.children,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: children,
        ),
      ),
    );
  }
}
