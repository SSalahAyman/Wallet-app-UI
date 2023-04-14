import 'package:flutter/material.dart';
import 'package:walletapp/components/models/transaction.dart';

class Transactionitem extends StatelessWidget {
  const Transactionitem({
    super.key,
    required this.transitem,
  });
  static late double width;
  static late double height;
  final Transaction transitem;

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.only(top: 5),
      child: (ListTile(
        contentPadding:
            const EdgeInsets.only(top: 5, right: 7, left: 7, bottom: 7),
        leading: Container(
          margin: const EdgeInsets.only(left: 10),
          padding: const EdgeInsets.all(7),
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(15)),
          child: Image.asset(
            "assets/icons/${transitem.Statetransimage}.png",
            height: height * 0.5,
          ),
        ),
        title: Text(
          transitem.Statetranstext,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(
          transitem.datetrans,
          style: const TextStyle(
              fontSize: 18, fontWeight: FontWeight.normal, color: Colors.grey),
        ),
        trailing: Text(
          transitem.amounttrans.toString(),
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      )),
    );
  }
}
