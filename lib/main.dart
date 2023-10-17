import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_flutter/app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(
    EasyLocalization(
      fallbackLocale: const Locale('en'),
      path: 'assets/translations',
      supportedLocales: const [Locale('en')],
      child: const App(),
    ),
  );
}
