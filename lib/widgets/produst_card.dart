import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    this.image,
    required this.productTitle,
    required this.oldPrice,
    required this.price,
    required this.discount,
    this.onPress,
    super.key,
  });

  final String? image;
  final String productTitle;
  final double price;
  final double oldPrice;
  final String discount;
  final VoidCallback? onPress;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            offset: const Offset(24, 40),
            color: const Color(0xFF22292E).withOpacity(0.2),
            blurRadius: 80,
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          // mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  margin: const EdgeInsetsDirectional.only(
                    bottom: 8,
                  ),
                  // padding: EdgeInsetsDirectional.only(start: 6, top: 6),
                  height: 152,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: const Color(0xFFE5E5EA),
                    // image: DecorationImage(image: ),
                  ),
                ),
                PositionedDirectional(
                  top: 6,
                  start: 6,
                  child: Container(
                    padding: const EdgeInsetsDirectional.symmetric(
                        horizontal: 8, vertical: 4),
                    // margin:
                    //     const EdgeInsetsDirectional.only(start: 6, top: 6),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      gradient: const LinearGradient(
                        begin: AlignmentDirectional.topStart,
                        end: AlignmentDirectional.bottomEnd,
                        colors: [
                          Color(0xFF272459),
                          Color(0xFFF35C56),
                        ],
                      ),
                    ),
                    child: Text(
                      discount,
                      style: GoogleFonts.poppins(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: const Color(0xFFF8F8F8)),
                    ),
                  ),
                ),
              ],
            ),
            Text(
              productTitle,
              style: GoogleFonts.poppins(
                fontSize: 16,
                color: const Color(0xFF272459),
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            Text(
              '\$$price',
              style: GoogleFonts.poppins(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: const Color(0xFF272459),
              ),
            ),
            const SizedBox(
              height: 3,
            ),
            Row(
              children: [
                Text(
                  '\$$oldPrice',
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                    color: const Color(0xFF8A8A8E),
                    decoration: TextDecoration.lineThrough,
                    decorationThickness: 2,
                  ),
                ),
                const Spacer(),
                IconButton(
                  onPressed: onPress,
                  icon: const Icon(
                    Icons.favorite_outline_outlined,
                  ),
                  color: const Color(0xFFFF4343),
                  padding: EdgeInsetsDirectional.zero,

                  // hoverColor: Colors.redAccent,
                  highlightColor: Colors.transparent,
                  splashColor: Colors.transparent,
                  constraints: const BoxConstraints(),
                  style: const ButtonStyle(
                      // shadowColor: MaterialStateProperty.all(Color(0xFFFF4343))
                      ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
