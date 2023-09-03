import 'package:flutter/material.dart';

class CustomPageIndicator extends StatelessWidget {
  const CustomPageIndicator({
    this.marginEnd = 0,
    required this.isCurrentIndex,
    super.key,
  });

  final double marginEnd;
  final bool isCurrentIndex;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsetsDirectional.only(end: marginEnd),
      width: isCurrentIndex ? 40 : 8,
      height: 8,
      decoration: BoxDecoration(
          color: isCurrentIndex ? const Color(0xFFF35C56) : const Color(0xFFE4E4E6),
          borderRadius: BorderRadius.circular(16)),
    );
  }
}
