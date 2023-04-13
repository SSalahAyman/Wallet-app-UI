import 'package:flutter/material.dart';

class Cardbalance extends StatelessWidget {
  const Cardbalance({super.key});
  static late double width;
  static late double height;
  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white.withOpacity(0.7),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade600,
                spreadRadius: 2,
                blurRadius: 8,
                offset: Offset(5, 5),
              ),
              BoxShadow(
                color: Colors.white,
                spreadRadius: 1,
                blurRadius: 8,
                offset: Offset(-4, -4),
              ),
            ],
          ),
          child: Row(
            children: [
              Image.asset(
                "assets/icons/dollar-symbol.png",
                width: width * 0.1,
              ),
              // SizedBox(width: width * 0.01),
              Text(
                "100.00",
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey.shade800),
              )
            ],
          ),
        ),
        SizedBox(
          height: height * 0.018,
        ),
        Text(
          "Card Balance",
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.grey.shade700),
        ),
      ],
    );
  }
}
