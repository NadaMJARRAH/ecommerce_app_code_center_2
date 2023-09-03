import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextField extends StatelessWidget {
  AppTextField({
    required this.hint,
    required this.keyboard,
    required this.controller,
    this.obscure = false,
    this.minLines = 1,
    this.maxLines = 1,
    this.expands = false,
    this.constraints = 0,
    this.suffix,
    this.suffixOnPress,
    super.key,
  });

  bool obscure;
  final TextInputType keyboard;
  final double constraints;
  final int? minLines;
  final int? maxLines;
  final bool expands;
  final String hint;
  final IconData? suffix;
  final void Function()? suffixOnPress;
  final TextEditingController controller;



  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscure,
      keyboardType: keyboard,
      minLines: minLines,
      maxLines: maxLines,
      expands: expands,
      controller: controller,
      cursorColor:  const Color(0xFF272459),
      style: GoogleFonts.poppins(color: const Color(0xFF272459), fontSize: 16),
      decoration: InputDecoration(
        suffixIcon: IconButton(
          icon: Icon(suffix),
      color: const Color(0xFFC5C5C7),
      onPressed: suffixOnPress,
    ),

        hintText: hint,
        //*****************************************//
        contentPadding: const EdgeInsetsDirectional.symmetric(horizontal: 16),
        constraints: BoxConstraints(maxHeight: constraints),
          //*****************************************//
        hintStyle: GoogleFonts.poppins(
          fontSize: 16,
          color: const Color(0xFFC5C5C7),
        ),
        //*****************************************//
        enabledBorder:  OutlineInputBorder(
          borderSide:  const BorderSide(
            color:Color(0xFFC5C5C7) ,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide:  const BorderSide(
            color: Color(0xFFC5C5C7),
          ),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }

}
