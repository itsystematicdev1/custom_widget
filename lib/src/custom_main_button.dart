import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class CustomMainButton extends StatelessWidget {
  const CustomMainButton({
    Key? key,
    this.buttonLabel = '',
    this.onTap,
    this.width,
    this.height,
    this.color,
    this.borderRadius,
    this.textStyle, 
  }) : super(key: key);

  final String buttonLabel;
  final VoidCallback? onTap;
  final double? width;
  final double? height;
  final Color? color;
  final double? borderRadius;
  final TextStyle? textStyle; 

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width ?? MediaQuery.of(context).size.width,
        height: height ?? MediaQuery.of(context).size.height * 0.065,
        decoration: ShapeDecoration(
          gradient: LinearGradient(
            begin: const Alignment(1.00, -0.03),
            end: const Alignment(-1, 0.03),
            colors: [
              color ?? Theme.of(context).colorScheme.primary,
              color ?? Theme.of(context).colorScheme.surfaceTint,
            ],
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius ?? 10),
          ),
        ),
        child: Center(
          child: AutoSizeText(
            buttonLabel,
            style: textStyle ??const TextStyle(fontSize: 18, fontWeight: FontWeight.w600), // Use default style if textStyle is null
          ),
        ),
      ),
    );
  }
}
