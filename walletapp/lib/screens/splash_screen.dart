// import 'dart:ffi';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:walletapp/screens/home_page.dart';

class Splashscreen extends StatelessWidget {
  const Splashscreen({super.key});
  static late double width;
  static late double height;
  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        width: width,
        height: height,
        child: AnimatedSplashScreen(
          splashIconSize: height,
          splash: Container(
            width: width,
            height: height,
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/images/photos/bg_splash2.png"),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  children: [
                    Lottie.asset(
                        width: width * 0.3,
                        "assets/images/animations/lottie_splash.json"),
                    const Padding(
                      padding: EdgeInsets.only(
                        top: 15,
                      ),
                      child: Text(
                        "MyWallet",
                        style: TextStyle(
                            color: Color(0xff00509d),
                            fontWeight: FontWeight.w700,
                            fontSize: 45,
                            fontFamily: 'SecularOne-Regular'),
                      ),
                    ),
                    SizedBox(
                      width: width * 0.08,
                    )
                  ],
                ),
                const Text(
                  "Make it easier!",
                  style: TextStyle(
                      color: Color(0xffd00000),
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      fontFamily: "AsapCondensed-Bold"),
                ),
                SizedBox(
                  height: height * 0.05,
                ),
                const Text(
                  "Version 1.0.0",
                  style: TextStyle(
                      color: Color(0xffbfc0c0),
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: height * 0.2,
                ),
                Center(
                  child: Container(
                    child: Column(
                      children: [
                        Text("My Wallet App , powered by"),
                        SizedBox(
                          height: height * 0.02,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              "assets/icons/paypal.png",
                              width: width * 0.12,
                            ),
                            SizedBox(
                              width: width * 0.1,
                            ),
                            Image.asset(
                              "assets/icons/visa.png",
                              width: width * 0.12,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          nextScreen: Homepage(),
        ),
      ),
    );
  }
}
