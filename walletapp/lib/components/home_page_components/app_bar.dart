import 'package:flutter/material.dart';
import 'package:walletapp/screens/card_page.dart';

class Appbar extends StatelessWidget {
  const Appbar({super.key});
  static late double width;
  static late double height;

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return Row(
      children: [
        SizedBox(
          width: width * 0.04,
        ),
        const Text(
          "My",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
        ),
        SizedBox(
          width: width * 0.02,
        ),
        const Text(
          "Cards",
          style: TextStyle(fontSize: 26),
        ),
        const Spacer(
          flex: 1,
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return Cardpage();
            }));
          },
          child: Container(
            margin: EdgeInsets.only(right: width * 0.04),
            padding: const EdgeInsets.all(2),
            decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.7), shape: BoxShape.circle),
            child: const Icon(Icons.add),
          ),
        )
      ],
    );
  }
}
