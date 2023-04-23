import 'package:flutter/material.dart';
import 'package:swipeable_button_view/swipeable_button_view.dart';
import 'package:walletapp/components/navbar.dart';

class Slidebutton extends StatefulWidget {
  Slidebutton({super.key});

  @override
  State<Slidebutton> createState() => _SlidebuttonState();
}

class _SlidebuttonState extends State<Slidebutton> {
  bool isFinished = false;
  @override
  Widget build(BuildContext context) {
    return SwipeableButtonView(
      buttonText: 'SLIDE TO HOMEPAGE',
      buttonWidget: Container(
        child: Icon(
          Icons.arrow_forward_ios_rounded,
          color: Colors.grey,
        ),
      ),
      activeColor: Color(0xFF00509d),
      isFinished: isFinished,
      onWaitingProcess: () {
        Future.delayed(Duration(seconds: 2), () {
          setState(() {
            isFinished = true;
          });
        });
      },
      onFinish: () async {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return Navbar();
        }));

        //TODO: For reverse ripple effect animation
        setState(() {
          isFinished = false;
        });
      },
    );
  }
}
