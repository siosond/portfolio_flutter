import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TechnicalStackItemCompact extends StatelessWidget {
  final String svg;

  const TechnicalStackItemCompact({
    super.key,
    required this.svg,
  });

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      svg,
      height: 32,
      width: 32,
    );
  }
}
