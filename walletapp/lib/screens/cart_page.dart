import 'package:flutter/material.dart';

class Cartpage extends StatelessWidget {
  const Cartpage({super.key});
  static late double width;
  static late double height;
  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.grey[350],
      body: SafeArea(
        child: Container(
          width: width,
          height: height,
          child: Center(
            child: Text("cartpage"),
          ),
        ),
      ),
    );
  }
}
