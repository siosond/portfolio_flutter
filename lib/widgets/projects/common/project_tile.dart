// ignore_for_file: avoid_web_libraries_in_flutter

import 'dart:js' as js;

import 'package:fluent_ui/fluent_ui.dart';
import 'package:portfolio_flutter/widgets/common/noto_sans_text.dart';

class ProjectTile extends StatelessWidget {
  final String image;
  final String name;
  final String url;

  const ProjectTile({
    required this.image,
    required this.name,
    required this.url,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Row(
        children: [
          Image.asset(image, height: 32),
          const SizedBox(width: 8),
          Expanded(
            child: NotoSansText(
              name,
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
            ),
          ),
        ],
      ),
      onPressed: () async {
        js.context.callMethod('open', [url]);
      },
    );
  }
}
