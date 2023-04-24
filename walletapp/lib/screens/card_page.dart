import 'package:flutter/material.dart';
import 'package:walletapp/materials/default_colors.dart';

import '../components/card_page_components.dart/app_bar_card_page.dart';

class Cardpage extends StatelessWidget {
  const Cardpage({super.key});
  static late double width;
  static late double height;
  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        backgroundColor: DefaultColors.defaultGrey,
        body: Container(
          width: width,
          height: height,
          child: Column(
            children: [
              AppbarCardPage(),
              SizedBox(
                height: height * 0.06,
              ),
              Container(
                height: height * 0.745,
                child: ListView(
                  children: [
                    Stack(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            top: height * 0.06,
                            left: width * 0.06,
                            right: width * 0.06,
                          ),
                          child: Container(
                            width: width * 0.85,
                            height: height * 0.6,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(30)),
                            child: Column(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(top: height * 0.1),
                                  child: Text("sdsaddasd"),
                                ),
                                Text("dasdadsd")
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              left: width * 0.15, bottom: height * 0.1),
                          child: Container(
                            width: width * 0.65,
                            height: height * 0.16,
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 24, 26, 172),
                                borderRadius: BorderRadius.circular(20)),
                            child: Column(children: [
                              Row(
                                children: [Text("asdasdd")],
                              )
                            ]),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
