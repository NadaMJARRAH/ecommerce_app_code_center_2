import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeSection extends StatelessWidget {
  const HomeSection({
    required this.title,
    super.key,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: GoogleFonts.poppins(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        const Spacer(),
        TextButton(
            onPressed: () {},
            child: Text(
              'View All',
              style: GoogleFonts.poppins(
                fontSize: 14,
                color: const Color(0xFF272459),
              ),
            ))
      ],
    );
  }
}
