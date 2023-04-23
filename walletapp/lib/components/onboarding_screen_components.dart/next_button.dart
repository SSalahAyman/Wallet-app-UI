import 'package:flutter/material.dart';

class Nextbutton extends StatelessWidget {
  Nextbutton({super.key});
  String buttontext = "next";
  final _controller = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        _controller.nextPage(
            duration: Duration(milliseconds: 500), curve: Curves.easeIn);
      },
      child: Text(
        buttontext,
        style: TextStyle(fontSize: 20),
      ),
      style: ElevatedButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          primary: Color(0xff00509d),
          minimumSize: Size(340, 50)),
    );
  }
}
