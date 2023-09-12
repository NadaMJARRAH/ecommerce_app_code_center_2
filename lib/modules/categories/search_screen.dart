import 'package:ecommerce_app_code_center_2/widgets/app_text_field.dart';
import 'package:ecommerce_app_code_center_2/widgets/produst_card.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  late TextEditingController _searchTextEditingController;

  @override
  void initState() {
    super.initState();
    _searchTextEditingController = TextEditingController();
  }

  @override
  void dispose() {
    _searchTextEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          titleSpacing: 0,
          title: AppTextField(
            filled: true,
            hint: 'Search',
            keyboard: TextInputType.text,
            controller: _searchTextEditingController,
            maxLines: null,
            minLines: null,
            expands: true,
            constraints: 44,
            showBorder: false,
            prefix: const Icon(
              Icons.search_outlined,
              color: Color(0xFfAEAEB2),
            ),
          ),
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.arrow_back_ios_new_outlined,
              color: Color(0xFF272459),
            ),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.shopping_cart_outlined),
              color: const Color(0xFF272459),
            )
          ],
        ),
        body: GridView.builder(
          padding: const EdgeInsetsDirectional.symmetric(
              horizontal: 16, vertical: 16),
          itemCount: 8,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 8,
            crossAxisSpacing: 8,
            childAspectRatio: 168 / 245,
          ),
          itemBuilder: (context, index) {
            return  ProductCard(
                productTitle: 'Headphone Joss',
                oldPrice: 56,
                price: 145,
                discount: 'Disc 80%',
            onPress: (){},);
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
