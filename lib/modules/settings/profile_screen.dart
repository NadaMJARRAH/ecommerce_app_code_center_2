import 'package:ecommerce_app_code_center_2/widgets/custom_profile_list_tile.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          'My Profile',
          style: GoogleFonts.poppins(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: const Color(0xFF272459),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.shopping_cart_outlined,
              color: Color(0xFF272459),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.chat_outlined,
              color: Color(0xFF272459),
            ),
          ),
        ],
      ),
      // backgroundColor: Color(0xFFFBFBFB),
      body: ListView(
        scrollDirection: Axis.vertical,
        padding: const EdgeInsetsDirectional.symmetric(horizontal: 16),
        // reverse: true,
        children: [
          // const SizedBox(
          //   height: 24,
          // ),
          Container(
            margin: const EdgeInsetsDirectional.only(top: 24),
            height: 120,
            width: 120,
            decoration: const BoxDecoration(
                shape: BoxShape.circle, color: Color(0xFFE5E5EA)),
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            'Nada Al Jarrah',
            textAlign: TextAlign.center,
            style: GoogleFonts.poppins(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          CustomProfileListTile(
            leading: Icons.account_circle_outlined,
            title: 'My Profile',
            onPress: () {},
            trailing: Icons.arrow_forward_ios_outlined,
          ),
          CustomProfileListTile(
            leading: Icons.location_on_outlined,
            title: 'My Address',
            onPress: () {},
            trailing: Icons.arrow_forward_ios_outlined,
          ),
          CustomProfileListTile(
            leading: Icons.notifications_none_outlined,
            title: 'Notification',
            onPress: () {},
            trailing: Icons.arrow_forward_ios_outlined,
          ),
          CustomProfileListTile(
            leading: Icons.verified_user_outlined,
            title: 'Help Center',
            onPress: () {},
            trailing: Icons.arrow_forward_ios_outlined,
          ),
          CustomProfileListTile(
            leading: Icons.logout_outlined,
            title: 'Logout',
            onPress: () {},
            marginBottom: 0,
          ),
        ],
      ),
      // ListView.separated(itemBuilder: (context, index) {
      //   return CustomProfileListTile(
      //           leading: Icons.location_on_outlined,
      //           title: 'My Address',
      //           onPress: () {},
      //           trailing: Icons.arrow_forward_ios_outlined,
      //         );
      //       }, separatorBuilder: (context, index) {
      //   return const Divider();
      // }, itemCount: 5)
      // ListView.builder(
      //   itemCount: 15,
      //   scrollDirection: Axis.vertical,
      //   padding: EdgeInsetsDirectional.symmetric(horizontal: 16),
      //   // reverse: true,
      //   itemBuilder: (context, index) {
      //   return CustomProfileListTile(
      //     leading: Icons.location_on_outlined,
      //     title: 'My Address',
      //     onPress: () {},
      //     trailing: Icons.arrow_forward_ios_outlined,
      //   );
      //
      // },)
      //
    );
  }
}
