import 'package:flutter/material.dart';
import 'package:portfolio_flutter/widgets/experience/experience.dart';

class Portfolio extends StatefulWidget {
  const Portfolio({super.key, required this.title});

  final String title;

  @override
  State<Portfolio> createState() => _PortfolioState();
}

class _PortfolioState extends State<Portfolio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.surfaceVariant,
        title: Text(widget.title),
      ),
      body: const Experience(),
    );
  }
}
