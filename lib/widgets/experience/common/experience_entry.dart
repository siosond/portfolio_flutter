import 'package:fluent_ui/fluent_ui.dart';
import 'package:portfolio_flutter/widgets/experience/common/experience_card.dart';
import 'package:portfolio_flutter/widgets/experience/common/experience_period.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ExperienceEntry extends StatelessWidget {
  final IconData icon;
  final List<Widget> children;
  final String period;

  const ExperienceEntry({
    required this.children,
    required this.icon,
    required this.period,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        if (sizingInformation.isMobile) {
          return Column(
            children: [
              ExperiencePeriod(
                icon: icon,
                text: period,
              ),
              ExperienceCard(children: children),
            ],
          );
        }
        return Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ExperiencePeriod(
                icon: icon,
                text: period,
              ),
            ),
            Expanded(
              child: ExperienceCard(children: children),
            ),
          ],
        );
      },
    );
  }
}
