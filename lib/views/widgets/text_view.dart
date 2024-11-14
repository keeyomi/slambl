import 'package:flutter/material.dart';

class TextView extends StatelessWidget {
  const TextView(this.text, {
    super.key,
    this.fontSize,
    this.isBold,
    this.textColor,
  });

  final String text;
  final double? fontSize;
  final bool? isBold;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: textColor ?? Colors.black,
        fontSize: fontSize ?? 14,
        fontWeight: isBold == true ? FontWeight.bold : FontWeight.normal,
      ),
    );
  }
}