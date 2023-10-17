import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NotoSansText extends Text {
  NotoSansText(
    super.data, {
    super.key,
    TextStyle? style,
    super.strutStyle,
    super.textAlign,
    super.textDirection,
    super.locale,
    super.softWrap,
    super.overflow,
    super.textScaleFactor,
    super.maxLines,
    super.semanticsLabel,
    super.textWidthBasis,
    super.textHeightBehavior,
    super.selectionColor,
  }) : super(style: style ?? GoogleFonts.notoSans());
}
