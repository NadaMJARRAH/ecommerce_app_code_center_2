import 'package:ecommerce_app_code_center_2/home/home_screen.dart';
import 'package:ecommerce_app_code_center_2/modules/auth/login_screen.dart';
import 'package:ecommerce_app_code_center_2/modules/auth/sign_up_screen.dart';
import 'package:ecommerce_app_code_center_2/modules/categories/search_screen.dart';
import 'package:ecommerce_app_code_center_2/modules/launch/on_boarding_screen.dart';
import 'package:ecommerce_app_code_center_2/modules/launch/splash_screen.dart';
import 'package:ecommerce_app_code_center_2/modules/settings/profile_screen.dart';
import 'package:flutter/material.dart';




void main(){
  runApp( const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      initialRoute: '/splash_screen',
      routes: {
        '/splash_screen': (context) => const SplashScreen(),
        '/on_boarding_screen': (context) => const OnBoardingScreen(),
        '/login_screen': (context) =>  LoginScreen(),
        '/sign_up_screen': (context) => const SignUpScreen(),
        '/profile_screen': (context) => const ProfileScreen(),
        '/search_screen': (context) => const SearchScreen(),
        '/home_screen': (context) => const HomeScreen(),



      },

    );
  }
}
