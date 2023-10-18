import 'package:easy_localization/easy_localization.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:portfolio_flutter/screens/portfolio.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return FluentApp(
      darkTheme: FluentThemeData(brightness: Brightness.dark),
      home: const Portfolio(title: 'Portfolio'),
      locale: context.locale,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      theme: FluentThemeData(brightness: Brightness.light),
      themeMode: ThemeMode.system,
      title: 'Daniel Sioson | Mobile App and Web Developer',
    );
  }
}
