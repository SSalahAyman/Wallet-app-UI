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

  String buttontext = "next";

  bool isFinished = false;

  List<Widget> intropages = [
    FirstIntroScreen(),
    SecondIntroScreen(),
    ThirdIntroScreen(),
  ];

  final _controller = PageController(initialPage: 0);

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
                  if (value == 2) {
                    setState(() {
                      buttontext = "finish";
                    });
                  } else {
                    setState(() {
                      buttontext = "Next";
                    });
                  }
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
              child: buttontext == "Next"
                  ? Nextbutton()
                  : Container(
                      width: width * 0.8,
                      height: height * 0.07,
                      child: Slidebutton(),
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
