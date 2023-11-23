import 'package:flutter/material.dart';
import 'custom_main_button.dart';

class CustomAlertDialog extends StatelessWidget {
  final Widget content;
  final VoidCallback onOkPressed;
  final VoidCallback? onCancelPressed;
  final double borderRadius; // Added borderRadius
  final EdgeInsets padding; // Added padding

  const CustomAlertDialog({
    Key? key,
    required this.content,
    required this.onOkPressed,
    this.onCancelPressed,
    this.borderRadius = 15,
    this.padding = const EdgeInsets.all(16),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      child: Padding(
        padding: padding,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: padding,
              child: content,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                if (onCancelPressed != null)
                  CustomMainButton(
                    onTap: onCancelPressed,
                    buttonLabel: 'Cancel',
                  ),
                CustomMainButton(
                  onTap: onOkPressed,
                  buttonLabel: 'Ok',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
