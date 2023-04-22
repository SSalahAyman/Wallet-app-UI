import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:walletapp/components/navbar.dart';
import 'package:walletapp/components/onboarding_screen_components.dart/first_intro_screen.dart';
import 'package:walletapp/components/onboarding_screen_components.dart/second_intro_screen.dart';
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
                      buttontext = "next";
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

            /*
              indicator button
            */
            Container(
              child: buttontext == "next"
                  ? ElevatedButton(
                      onPressed: () {
                        _controller.nextPage(
                            duration: Duration(milliseconds: 500),
                            curve: Curves.easeIn);
                      },
                      child: Text(buttontext),
                    )
                  : ElevatedButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return Navbar();
                        }));
                      },
                      child: Text(buttontext),
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
