import 'package:flutter/material.dart';

class Servicebutton extends StatelessWidget {
  const Servicebutton(
      {super.key, required this.imageservice, required this.textservice});
  static late double width;
  static late double height;

  final String imageservice;
  final String textservice;
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
          child: Image.asset(
            imageservice,
            width: width * 0.15,
          ),
        ),
        SizedBox(
          height: height * 0.015,
        ),
        Text(
          textservice,
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.grey.shade700),
        ),
      ],
    );
  }
}
