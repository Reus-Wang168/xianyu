import 'dart:ui';

import 'package:flutter/material.dart';

class CustomCheckbox2 extends StatelessWidget {
  final bool value;
  final ValueChanged<bool?> onChanged;
  final double size;

  const CustomCheckbox2({
    super.key,
    required this.value,
    required this.onChanged,
    this.size = 24.0,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onChanged(!value);
      },
      child: Container(
        width: size,
        height: size,
        decoration: BoxDecoration(
          gradient: const RadialGradient(
            center: Alignment.topLeft,
            radius: 1.0,
            colors: [
              Color(0xFFFFF6E4), // startColor from your XML
              Color(0xFFD3C2B4), // endColor from your XML
            ],
          ),
          border: Border.all(
            color: const Color(0xFF65574C), // border color from your XML
            width: 1.0,
          ),
          borderRadius: BorderRadius.circular(2.0), // corners from your XML
        ),
        child: value
            ? const Icon(
                Icons.check,
                size: 22.0,
                color: Color(0xFF65574C),
              )
            : null,
      ),
    );
  }
}
