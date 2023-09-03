import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppElevatedButton extends StatelessWidget {
  const AppElevatedButton({
    required this.title,
    required this.onPress,
    super.key,
  });

  final String title;
  final VoidCallback onPress;
  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        gradient: const LinearGradient(
          colors: [
            Color(0xFF272459),
            Color(0xFFF35C56),
          ],
        ),
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent,
          elevation: 0,
          minimumSize: const Size(double.infinity, 48),
          // shape: RoundedRectangleBorder(
          //   borderRadius: BorderRadius.circular(24),
          // ),
        ),
        onPressed: onPress,
        child: Text(
          title,
          style: GoogleFonts.poppins(
              fontSize: 16, fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
