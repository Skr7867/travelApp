import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  final double height;
  final double width;
  final double radius;
  final Color color;
  final String text;
  final TextStyle? textStyle;
  final VoidCallback onPressed;

  const CustomElevatedButton({
    super.key,
    required this.height,
    required this.width,
    required this.radius,
    required this.color,
    required this.text,
    this.textStyle,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radius),
          ),
        ),
        onPressed: onPressed,
        child: Text(
          text,
          style:
              textStyle ?? const TextStyle(color: Colors.white, fontSize: 16),
        ),
      ),
    );
  }
}
