import 'package:ecommerce_app_code_center_2/widgets/app_elevated_button.dart';
import 'package:ecommerce_app_code_center_2/widgets/custom_page_indicator.dart';
import 'package:ecommerce_app_code_center_2/widgets/custom_text_button.dart';
import 'package:ecommerce_app_code_center_2/widgets/on_boarding_content.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  late PageController _pageController;

  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            // if(_currentPage < 2 )
            Align(
              alignment: AlignmentDirectional.centerEnd,
              child: Visibility(
                visible: _currentPage < 2,
                replacement: CustomTextButton(
                  title: 'START',
                  onPress: () {
                    Navigator.pushReplacementNamed(context, '/login_screen');
                  },
                ),
                child: CustomTextButton(
                  title: 'SKIP',
                  onPress: () {
                    _pageController.animateToPage(2,
                        duration: const Duration(seconds: 1),
                        curve: Curves.easeInOutBack);
                  },
                ),
              ),
            ),
            // if(_currentPage ==2)
            //   Align(
            //     alignment: AlignmentDirectional.centerEnd,
            //     child: TextButton(
            //       onPressed: () {},
            //       child: Text(
            //         'START',
            //         style: GoogleFonts.poppins(
            //             color: const Color(0xFF272459),
            //             fontWeight: FontWeight.bold,
            //             fontSize: 16),
            //       ),
            //     ),
            //   ),
            Expanded(
              child: PageView(
                // scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                onPageChanged: (int currentPage) {
                  debugPrint('currentPage $currentPage');
                  setState(() {
                    _currentPage = currentPage;
                  });
                },
                controller: _pageController,
                children: const [
                  // Container(
                  //   color: Colors.yellow,
                  //   child: const Text('Container1'),
                  // ),
                  // Container(
                  //   color: Colors.grey,
                  //   child: const Text('Container2'),
                  // ),
                  // Container(
                  //   color: Colors.pink,
                  //   child: const Text('Container3'),
                  // ),
                  OnBoardingContent(
                    imageName: 'onboarding_1',
                    title: 'Online Shopping',
                    subTitle:
                        'Buy anything you need anywhere and anytime with the guarantee of the best goods.',
                  ),
                  OnBoardingContent(
                      imageName: 'onboarding_2',
                      title: 'An Affordable Price',
                      subTitle:
                          'we have very cheap prices with easy and simple transactions'),
                  OnBoardingContent(
                    imageName: 'onboarding_3',
                    title: 'Tracking your Shipments',
                    subTitle:
                        'Use the tracking system feature to get information about the courier on the map',
                  ),
                ],
              ),
            ),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: [
            //     TabPageSelectorIndicator(
            //       backgroundColor: _currentPage == 0
            //           ? const Color(0xFFF35C56)
            //           : const Color(0xFFE4E4E6),
            //       borderColor: Colors.transparent,
            //       size: 10,
            //     ),
            //     TabPageSelectorIndicator(
            //       backgroundColor: _currentPage == 1
            //           ? const Color(0xFFF35C56)
            //           : const Color(0xFFE4E4E6),
            //       borderColor: Colors.transparent,
            //       size: 10,
            //     ),
            //     TabPageSelectorIndicator(
            //       backgroundColor: _currentPage == 2
            //           ? const Color(0xFFF35C56)
            //           : const Color(0xFFE4E4E6),
            //       borderColor: Colors.transparent,
            //       size: 10,
            //     ),
            //   ],
            // ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomPageIndicator(
                  marginEnd: 8,
                  isCurrentIndex: _currentPage == 0,
                ),
                CustomPageIndicator(
                  marginEnd: 8,
                  isCurrentIndex: _currentPage == 1,
                ),
                CustomPageIndicator(
                  isCurrentIndex: _currentPage == 2,
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  onPressed: () {
                    if (_currentPage > 0) {
                      _pageController.previousPage(
                          duration: const Duration(seconds: 1),
                          curve: Curves.easeInOutBack);
                    }
                  },
                  icon: const Icon(
                    Icons.arrow_circle_left_rounded,
                    size: 34,
                    color: Color(0xFFF35C56),
                  ),
                ),
                IconButton(
                  onPressed: () {
                    if (_currentPage < 2) {
                      _pageController.nextPage(
                          duration: const Duration(seconds: 1),
                          curve: Curves.easeInOutBack);
                    }
                  },
                  icon: const Icon(
                    Icons.arrow_circle_right_rounded,
                    size: 34,
                    color: Color(0xFFF35C56),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Visibility(
              visible: _currentPage == 2,
              child: Padding(
                padding: const EdgeInsetsDirectional.symmetric(horizontal: 16),
                child: AppElevatedButton(
                  title: 'Getting Started',
                  onPress: () {
                    Navigator.pushReplacementNamed(context, '/login_screen');
                  },
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
          ],
        ),
      ),
    );
  }
}
