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
    this.prefix,
    this.suffixOnPress,
    this.errorText,
    this.filled = false,
    this.showBorder = true,
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
  final Widget? prefix;
  final void Function()? suffixOnPress;
  final TextEditingController controller;
  final String? errorText;
  final bool filled;
  final bool showBorder;


  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscure,
      keyboardType: keyboard,
      minLines: minLines,
      maxLines: maxLines,
      expands: expands,
      controller: controller,
      cursorColor: const Color(0xFF272459),
      style: GoogleFonts.poppins(color: const Color(0xFF272459), fontSize: 16),
      decoration: InputDecoration(
        errorText: errorText,
        suffixIcon: IconButton(
          icon: Icon(suffix),
          color: const Color(0xFFC5C5C7),
          onPressed: suffixOnPress,
        ),
        prefixIcon: prefix,
        hintText: hint,
        fillColor: const Color(0xFFEFEFF0),
        filled: filled,
        //*****************************************//
        contentPadding: const EdgeInsetsDirectional.symmetric(horizontal: 16),
        constraints: BoxConstraints(maxHeight: constraints),
        //*****************************************//
        hintStyle: GoogleFonts.poppins(
          fontSize: 16,
          color: const Color(0xFFC5C5C7),

        ),
        //*****************************************//
        enabledBorder: buildOutlineInputBorder(color: const Color(0xFFB9B9BB)),
        focusedBorder: buildOutlineInputBorder(color: const Color(0xFFB9B9BB)),
        //*****************************************//
        errorBorder: buildOutlineInputBorder(color: const Color(0xFFFF4343)),
        focusedErrorBorder:  buildOutlineInputBorder(color: const Color(0xFFFF4343)),
      ),
    );
  }

  OutlineInputBorder buildOutlineInputBorder({required Color color}) {
    return OutlineInputBorder(
        borderSide:  BorderSide(
          color: showBorder?color : Colors.transparent,
        ),
        borderRadius: BorderRadius.circular(10),
      );
  }
}
