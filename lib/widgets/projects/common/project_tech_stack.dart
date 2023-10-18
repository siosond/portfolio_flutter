import 'package:flutter/material.dart';

class ProjectTechStack extends StatelessWidget {
  final List<Widget> children;

  const ProjectTechStack({
    required this.children,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: children,
      ),
    );
  }
}
