import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:walletapp/main.dart';

class SecondIntroScreen extends StatelessWidget {
  const SecondIntroScreen({super.key});

  static late double width;
  static late double height;

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
        CircleAvatar(
          backgroundColor: Color(0xff6b95f8),
          radius: width * 0.4,
          child: CircleAvatar(
            radius: width * 0.3,
            child: Image.asset(
              "assets/icons/intro icons/add -card.png",
            ),
          ),
        ),
        SizedBox(
          height: height * 0.06,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Add ",
              style: TextStyle(
                  fontSize: 23,
                  color: Color(0xff00509d),
                  fontWeight: FontWeight.bold),
            ),
            Text(
              "your card to the App",
              style: TextStyle(
                  color: Color(0xff01002f),
                  fontWeight: FontWeight.bold,
                  fontSize: 23),
            )
          ],
        ),
        SizedBox(
          height: height * 0.01,
        ),
        Padding(
          padding: EdgeInsets.only(left: width * 0.01, bottom: height * 0.01),
          child: Text(
            "going to card page and add all your card entries :",
            style: TextStyle(
              fontSize: 15.sp,
              color: Color(0xff88869f),
            ),
          ),
        ),
        Container(
          width: width,
          height: height * 0.1372,
          child: ListView(
            children: [
              Padding(
                padding: EdgeInsets.only(left: width * 0.02),
                child: Text(
                  "- your card number .",
                  style: TextStyle(
                    fontSize: 15.sp,
                    color: Color(0xff88869f),
                  ),
                ),
              ),
              Padding(
                padding:
                    EdgeInsets.only(left: width * 0.02, top: height * 0.01),
                child: Text(
                  "- Full name on your card .",
                  style: TextStyle(
                    fontSize: 15.sp,
                    color: Color(0xff88869f),
                  ),
                ),
              ),
              Padding(
                padding:
                    EdgeInsets.only(left: width * 0.02, top: height * 0.01),
                child: Text(
                  "- Expire month / Expire year .",
                  style: TextStyle(
                    fontSize: 15.sp,
                    color: Color(0xff88869f),
                  ),
                ),
              ),
              Padding(
                padding:
                    EdgeInsets.only(left: width * 0.02, top: height * 0.01),
                child: Text(
                  "- CVV .",
                  style: TextStyle(
                    fontSize: 15.sp,
                    color: Color(0xff88869f),
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
