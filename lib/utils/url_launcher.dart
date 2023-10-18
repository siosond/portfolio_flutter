// ignore_for_file: avoid_web_libraries_in_flutter

import 'dart:js' as js;

class UrlLauncher {
  /// Launch a URL from the given URL string.
  static void launch(String url) {
    js.context.callMethod('open', [url]);
  }
}
