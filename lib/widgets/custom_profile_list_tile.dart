import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class CustomProfileListTile extends StatelessWidget {
  const CustomProfileListTile({
    required this.leading,
    this.trailing,
    required this.title,
    required this.onPress,
    this.marginBottom = 8,
    super.key,
  });

  final IconData leading;
  final String title;
  final IconData? trailing;
  final void Function() onPress;
  final double marginBottom;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsetsDirectional.only(bottom: marginBottom),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: ListTile(
        title: Text(
          title,
          style: GoogleFonts.poppins(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: const Color(0xFF272459),
          ),
        ),
        leading: Container(
          padding: const EdgeInsetsDirectional.all(8),
          decoration: BoxDecoration(
            color: const Color(0xFFF35C56).withOpacity(0.4),
            borderRadius: BorderRadius.circular(8),
          ),
          child:  Icon(
            leading,
            color: Color(0xFFF35C56),
          ),
        ),
        trailing: IconButton(
          onPressed: onPress,
          icon:  Icon(
              trailing,
            color: Color(0xFF272459),
          ),
        ),
      ),
    );
  }

}
