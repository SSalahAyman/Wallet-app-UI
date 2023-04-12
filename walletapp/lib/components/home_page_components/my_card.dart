import 'package:flutter/material.dart';
import 'package:walletapp/components/card_number.dart';

class Mycard extends StatelessWidget {
  const Mycard(
      {super.key,
      required this.firstcardnum,
      required this.secondcardnum,
      required this.thirdcardnum,
      required this.fourthcardnum,
      required this.expireyear,
      required this.expiremonth,
      required this.cvv,
      required this.yourname,
      required this.cardcolor});
  static late double width;
  static late double height;

  final int firstcardnum;
  final int secondcardnum;
  final int thirdcardnum;
  final int fourthcardnum;

  final String yourname;
  final int expireyear;
  final int expiremonth;
  final int cvv;
  final Color cardcolor;
  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 23),
      decoration: BoxDecoration(
        color: cardcolor,
        borderRadius: BorderRadius.circular(15),
      ),
      width: width,
      height: height * 0.2,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding:
                    EdgeInsets.only(left: width * 0.05, top: height * 0.01),
                child: Image.asset(
                  "assets/icons/1.png",
                  height: height * 0.05,
                  color: Colors.white,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  right: width * 0.05,
                ),
                child: Text(
                  "${expiremonth.toString()}/${expireyear.toString()}",
                  style: TextStyle(color: Colors.white),
                ),
              )
            ],
          ),
          SizedBox(
            height: height * 0.02,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Cardnumbertext(text: firstcardnum.toString()),
              Cardnumbertext(text: secondcardnum.toString()),
              Cardnumbertext(text: thirdcardnum.toString()),
              Cardnumbertext(text: fourthcardnum.toString()),
            ],
          ),
          const Spacer(
            flex: 1,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: width * 0.03, vertical: height * 0.025),
                child: Text(
                  yourname,
                  style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.normal,
                      color: Colors.white),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: width * 0.03),
                child: Text(
                  "CVV: ${cvv.toString()}",
                  style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.normal,
                      color: Colors.white),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
