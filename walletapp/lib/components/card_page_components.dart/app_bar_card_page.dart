import 'package:flutter/material.dart';

class AppbarCardPage extends StatelessWidget {
  const AppbarCardPage({super.key});
  static late double width;
  static late double height;
  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(
            left: width * 0.04,
            right: width * 0.07,
            top: height * 0.03,
            bottom: height * 0.01,
          ),
          child: Row(
            children: [
              Text(
                'Add New Card',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: width * 0.036,
          ),
          child: Row(
            children: [
              Text(
                'You can add new card and manage it',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.normal,
                    color: Colors.grey),
              )
            ],
          ),
        ),
      ],
    );
  }
}
