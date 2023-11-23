// ignore: depend_on_referenced_packages
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  const CustomText({
    super.key,
    required this.title,
    this.wrapWords = true,
    this.maxFontSize = 16,
    this.minFontSize = 16,
    this.overflow = TextOverflow.ellipsis,
    this.style,
    this.textColor,
  });

  final String title;
  final bool wrapWords;
  final double maxFontSize;
  final double minFontSize;
  final TextOverflow overflow;
  final TextStyle? style;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return AutoSizeText(
      title,
      wrapWords: wrapWords,
      maxFontSize: maxFontSize,
      minFontSize: minFontSize,
      overflow: overflow,
      style: style?.copyWith(color: textColor) ??
          TextStyle(
            fontWeight: FontWeight.w600,
            color: textColor,
          ),
    );
  }
}
