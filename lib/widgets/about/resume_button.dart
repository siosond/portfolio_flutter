// ignore_for_file: avoid_web_libraries_in_flutter

import 'dart:js' as js;

import 'package:easy_localization/easy_localization.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:portfolio_flutter/constants/urls.dart';
import 'package:portfolio_flutter/widgets/common/noto_sans_text.dart';

class ResumeButton extends StatelessWidget {
  const ResumeButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      onPressed: () {
        js.context.callMethod('open', [Urls.resume]);
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: NotoSansText(tr('resume')),
      ),
    );
  }
}