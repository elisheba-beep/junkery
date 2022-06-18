import 'package:flutter/material.dart';

class RoundButton extends StatelessWidget {
  final String text;
  final Color? textColor;
  final Color? backgroundColor;
  final VoidCallback? onPressed;
  final double? fontsize;

  const RoundButton({
    Key? key,
    this.backgroundColor,
    this.textColor,
    this.onPressed,
    this.fontsize,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: const CircleBorder(),
        primary: backgroundColor,
      ),
      onPressed: onPressed,
      child: Text(
        text,
        style: TextStyle(
          color: textColor,
          fontSize: fontsize,
        ),
      ),
    );
  }
}
