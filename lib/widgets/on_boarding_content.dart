import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class OnBoardingContent extends StatelessWidget {
  const OnBoardingContent({
    required this.imageName,
    required this.title,
    required this.subTitle,
    super.key,
  });


  final String imageName;
  final String title;
  final String subTitle;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset('images/$imageName.png'),
        const SizedBox(
          height: 40,
        ),
        Text(
          title,
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.bold,
            fontSize: 24,
            color: const Color(0xFF272459),
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Text(
            subTitle,
            textAlign: TextAlign.center,
            style: GoogleFonts.poppins(
              fontSize: 16,
              color: const Color(0xFF8A8A8E),
            ),
          ),

        ),
      ],
    );
  }
}

