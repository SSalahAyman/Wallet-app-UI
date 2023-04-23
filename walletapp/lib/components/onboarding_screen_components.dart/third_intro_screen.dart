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
          "assets/icons/intro icons/control-on-card2.png",
          width: width * 0.8,
        ),
        SizedBox(
          height: height * 0.06,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Control ",
              style: TextStyle(
                  fontSize: 23,
                  color: Color(0xff00509d),
                  fontWeight: FontWeight.bold),
            ),
            Text(
              "your card by the App",
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
          padding: EdgeInsets.only(bottom: height * 0.01, left: width * 0.02),
          child: const Text(
            "App introduces some functionalities you can use it such as :-",
            style: TextStyle(
              fontSize: 14,
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
                padding:
                    EdgeInsets.only(left: width * 0.02, top: height * 0.01),
                child: Text(
                  "- you can know your balanace .",
                  style: TextStyle(
                    fontSize: 14,
                    color: Color(0xff88869f),
                  ),
                ),
              ),
              Padding(
                padding:
                    EdgeInsets.only(left: width * 0.02, top: height * 0.01),
                child: Text(
                  "- You can send money .",
                  style: TextStyle(
                    fontSize: 14,
                    color: Color(0xff88869f),
                  ),
                ),
              ),
              Padding(
                padding:
                    EdgeInsets.only(left: width * 0.02, top: height * 0.01),
                child: Text(
                  "- You can pay from your balance to some sevices .",
                  style: TextStyle(
                    fontSize: 14,
                    color: Color(0xff88869f),
                  ),
                ),
              ),
              Padding(
                padding:
                    EdgeInsets.only(left: width * 0.02, top: height * 0.01),
                child: Text(
                  "- You can track / show your all history payments .",
                  style: TextStyle(
                    fontSize: 14,
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
