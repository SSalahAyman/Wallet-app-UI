import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:walletapp/screens/splash_screen.dart';

void main() {
  runApp(Walletapp());
}

class Walletapp extends StatelessWidget {
  const Walletapp({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(builder: (context, orientation, screenType) {
      return MaterialApp(
        title: "my wallet",
        debugShowCheckedModeBanner: false,
        home: Splashscreen(),
      );
    });
  }
}
