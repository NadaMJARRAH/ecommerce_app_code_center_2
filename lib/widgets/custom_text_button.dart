import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({
    required this.title,
    required this.onPress,
    super.key,
  });

  final String title;
  final void Function() onPress;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPress,
      child: Text(
        title,
        style: GoogleFonts.poppins(
            color: const Color(0xFF272459),
            fontWeight: FontWeight.bold,
            fontSize: 16),
      ),
    );
  }
}
