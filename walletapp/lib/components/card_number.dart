import 'package:flutter/material.dart';

class Cardnumbertext extends StatelessWidget {
  const Cardnumbertext({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
          color: Colors.white, fontSize: 22, fontWeight: FontWeight.normal),
    );
  }
}
