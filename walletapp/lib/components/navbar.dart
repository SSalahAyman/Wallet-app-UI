import 'package:flutter/material.dart';
import 'package:walletapp/screens/card_page.dart';
import 'package:walletapp/screens/home_page.dart';
import 'package:walletapp/screens/profile_page.dart';
import 'package:walletapp/screens/settings_page.dart';

class Navbar extends StatefulWidget {
  const Navbar({super.key});

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  static late double width;
  static late double height;
  int index = 0;

  static List<Widget> pages = [
    Homepage(),
    Cardpage(),
    Profilepage(),
    Settingspage(),
  ];
  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: pages.elementAt(index),
      bottomNavigationBar: BottomNavigationBar(
        // showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedLabelStyle: const TextStyle(
            letterSpacing: 1, fontSize: 13, fontWeight: FontWeight.w500),
        currentIndex: index,
        onTap: (value) {
          setState(() {
            index = value;
          });
        },
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Image.asset(
              "assets/icons/home.png",
              height: height * 0.03,
              color: Colors.grey.shade600,
            ),
            label: "Home",
            activeIcon: Image.asset(
              "assets/icons/home.png",
              height: height * 0.03,
              color: Colors.blue.shade700,
            ),
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              "assets/icons/cart.png",
              height: height * 0.03,
              color: Colors.grey.shade600,
            ),
            label: "Cart",
            activeIcon: Image.asset(
              "assets/icons/cart.png",
              height: height * 0.03,
              color: Colors.blue.shade700,
            ),
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              "assets/icons/profile.png",
              height: height * 0.03,
              color: Colors.grey.shade600,
            ),
            label: "profile",
            activeIcon: Image.asset(
              "assets/icons/profile.png",
              height: height * 0.03,
              color: Colors.blue.shade700,
            ),
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              "assets/icons/settings.png",
              height: height * 0.03,
              color: Colors.grey.shade600,
            ),
            label: "Settings",
            activeIcon: Image.asset(
              "assets/icons/settings.png",
              height: height * 0.03,
              color: Colors.blue.shade700,
            ),
          ),
        ],
      ),
    );
  }
}
