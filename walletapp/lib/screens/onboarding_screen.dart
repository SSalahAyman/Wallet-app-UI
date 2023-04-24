import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:swipeable_button_view/swipeable_button_view.dart';
import 'package:walletapp/components/navbar.dart';
import 'package:walletapp/components/onboarding_screen_components.dart/first_intro_screen.dart';
import 'package:walletapp/components/onboarding_screen_components.dart/next_button.dart';
import 'package:walletapp/components/onboarding_screen_components.dart/second_intro_screen.dart';
import 'package:walletapp/components/onboarding_screen_components.dart/slide_button.dart';
import 'package:walletapp/components/onboarding_screen_components.dart/third_intro_screen.dart';

import '../main.dart';

class Onboardingscreens extends StatefulWidget {
  Onboardingscreens({super.key});

  @override
  State<Onboardingscreens> createState() => _OnboardingscreensState();
}

class _OnboardingscreensState extends State<Onboardingscreens> {
  static late double width;
  static late double height;

  bool isFinished = false;

  List<Widget> intropages = [
    FirstIntroScreen(),
    SecondIntroScreen(),
    ThirdIntroScreen(),
  ];

  final _controller = PageController(initialPage: 0);
  int pageIndex = 0;
  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              // decoration: BoxDecoration(
              //   image: DecorationImage(
              //       fit: BoxFit.cover,
              //       image: AssetImage(
              //           "assets/icons/intro icons/intro_background.png")),
              // ),
              width: width,
              height: height * 0.82,
              child: PageView(
                onPageChanged: (value) {
                  setState(() {
                    pageIndex = value;
                  });
                },
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                controller: _controller,
                children: [
                  FirstIntroScreen(),
                  SecondIntroScreen(),
                  ThirdIntroScreen(),
                ],
              ),
            ),

            /*
              smooth page indicator
            */
            SmoothPageIndicator(
              axisDirection: Axis.horizontal,
              controller: _controller,
              count: intropages.length,
              effect: ExpandingDotsEffect(
                dotHeight: 10,
                activeDotColor: Color(0xff00509d),
              ),
            ),
            SizedBox(
              height: height * 0.03,
            ),

            /*
              indicator button
            */
            Container(
              child: pageIndex == 2
                  ? Container(
                      width: width * 0.8,
                      height: height * 0.07,
                      child: Slidebutton(),
                    )
                  : ElevatedButton(
                      onPressed: () {
                        _controller.nextPage(
                            duration: Duration(milliseconds: 500),
                            curve: Curves.easeIn);
                      },
                      child: Text(
                        "next",
                        style: TextStyle(fontSize: 20),
                      ),
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          primary: Color(0xff00509d),
                          minimumSize: Size(340, 50)),
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
