import 'package:ecommerce_app_code_center_2/widgets/produst_card.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.arrow_back_ios_new_outlined,
              color: Color(0xFF272459),
            ),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: GridView.builder(
          padding: EdgeInsetsDirectional.symmetric(horizontal: 16,vertical: 16),
          itemCount: 8,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 8,
            crossAxisSpacing: 8,
            childAspectRatio: 168 / 245,
          ),
          itemBuilder: (context, index) {
            return const ProductCard(
                productTitle: 'Headphone Joss',
                oldPrice: 56,
                price: 145,
                discount: 'Disc 80%');
          },
        )

        // GridView(
        //   padding: const EdgeInsetsDirectional.symmetric(horizontal: 16),
        //   scrollDirection: Axis.vertical,
        //   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        //       crossAxisCount: 2,
        //       mainAxisSpacing: 8,
        //       crossAxisSpacing: 8,
        //       // mainAxisExtent: 245,
        //       // childAspectRatio: cross/main
        //       childAspectRatio: 168 / 245),
        //   children: const [
        //     ProductCard(
        //         productTitle: 'Headphone Joss',
        //         oldPrice: 56,
        //         price: 145,
        //         discount: 'Disc 80%'),
        //   ],
        // ),
        );
  }
}
