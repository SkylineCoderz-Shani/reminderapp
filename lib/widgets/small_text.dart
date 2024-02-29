import 'package:flutter/material.dart';

class SmallText extends StatelessWidget {
  final String text;
  final Color? textColor;
  final TextAlign? textAlign;
  final FontWeight? fontWeight; // Added parameter for font weight
  final double? fontSize; // Added parameter for font size

  const SmallText({
    required this.text,
    this.textColor,
    this.textAlign,
    this.fontWeight,
    this.fontSize,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fontSize ?? 12, // Use specified fontSize or default to 12
        fontWeight: fontWeight ?? FontWeight.w400, // Use specified fontWeight or default to w400
        color: textColor ?? Colors.grey,
      ),
      textAlign: textAlign ?? TextAlign.center,
    );
  }
}

class LargeText extends StatelessWidget {
  final String text;
  final Color? textColor;
  final String? fontFamily;
  final FontWeight? fontWeight; // Added parameter for font weight
  final double? fontSize; // Added parameter for font size

  const LargeText({
    required this.text,
    this.textColor,
    this.fontFamily,
    this.fontWeight,
    this.fontSize,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fontSize ?? 26, // Use specified fontSize or default to 26
        fontWeight: fontWeight ?? FontWeight.w900, // Use specified fontWeight or default to w900
        color: textColor ?? Colors.black,
        fontFamily: fontFamily ?? "Kailasa",
      ),
    );
  }
}
