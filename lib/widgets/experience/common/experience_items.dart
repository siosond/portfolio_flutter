import 'package:fluent_ui/fluent_ui.dart';

class ExperienceItems extends StatelessWidget {
  final List<Widget> children;

  const ExperienceItems({super.key, required this.children});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: children,
      ),
    );
  }
}
