import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ExperiencePeriod extends StatelessWidget {
  final IconData icon;
  final String text;

  const ExperiencePeriod({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        if (sizingInformation.isMobile) {
          return Row(
            children: [
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(icon),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  text,
                  style: const TextStyle(fontSize: 16),
                ),
              )
            ],
          );
        }
        return Column(
          children: [
            Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(icon),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: 128,
                child: Center(
                  child: Text(
                    text,
                    style: const TextStyle(fontSize: 16),
                  ),
                ),
              ),
            )
          ],
        );
      },
    );
  }
}
