import 'package:flutter/material.dart';
import 'package:walletapp/main.dart';

class ThirdIntroScreen extends StatelessWidget {
  ThirdIntroScreen({super.key});
  static late double width;
  static late double height;

  final _controller = PageController();
  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return Column(
      children: [
        SizedBox(height: height * 0.03),
        Row(
          children: [
            SizedBox(
              width: width * 0.06,
            ),
            const Text(
              "Wallet",
              style: TextStyle(
                  color: Color(0xff00509d),
                  fontWeight: FontWeight.bold,
                  fontSize: 30),
            ),
            SizedBox(
              width: width * 0.02,
            ),
            const Text(
              "App",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  fontFamily: "AsapCondensed-Bold"),
            ),
            const Spacer(
              flex: 1,
            ),
          ],
        ),
        SizedBox(
          height: height * 0.08,
        ),
        Image.asset(
          "assets/icons/intro icons/welcome.png",
          width: width * 0.8,
        ),
        SizedBox(
          height: height * 0.06,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Welcome to ",
              style: TextStyle(
                  fontSize: 23,
                  color: Color(0xff01002f),
                  fontWeight: FontWeight.w500),
            ),
            Text(
              "Wallet ",
              style: TextStyle(
                  color: Color(0xff00509d),
                  fontWeight: FontWeight.bold,
                  fontSize: 23),
            ),
            Text(
              "App ",
              style: TextStyle(
                  fontSize: 23,
                  color: Color(0xff01002f),
                  fontWeight: FontWeight.w500),
            ),
          ],
        ),
        SizedBox(
          height: height * 0.01,
        ),
        const Text(
          "💙 We are here to help you with my wallet app 💙",
          style: TextStyle(
            fontSize: 14,
            color: Color(0xff88869f),
          ),
        ),
        const Spacer(
          flex: 1,
        ),
      ],
    );
  }
}
