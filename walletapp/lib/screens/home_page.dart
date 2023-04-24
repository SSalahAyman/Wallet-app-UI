import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:walletapp/materials/default_colors.dart';
import 'package:walletapp/models/card_number.dart';
import 'package:walletapp/components/home_page_components/app_bar.dart';
import 'package:walletapp/components/home_page_components/history_transactions.dart';
import 'package:walletapp/components/my_card.dart';
import 'package:walletapp/components/home_page_components/services_section/balance_Card.dart';
import 'package:walletapp/models/transaction.dart';

import '../components/home_page_components/services_section/service_button.dart';

class Homepage extends StatelessWidget {
  final pageviewcontroller = PageController();
  List<Widget> cards = [
    const Mycard(
      firstcardnum: 5211,
      secondcardnum: 8214,
      thirdcardnum: 3283,
      fourthcardnum: 4904,
      expireyear: 27,
      expiremonth: 07,
      cvv: 766,
      yourname: "Salah Ayman",
      cardcolor: Color.fromARGB(255, 24, 26, 172),
    ),
    const Mycard(
      firstcardnum: 5211,
      secondcardnum: 8214,
      thirdcardnum: 3283,
      fourthcardnum: 4904,
      expireyear: 27,
      expiremonth: 07,
      cvv: 766,
      yourname: "Salah Ayman",
      cardcolor: Color(0xff8968c4),
    ),
    const Mycard(
      firstcardnum: 5211,
      secondcardnum: 8214,
      thirdcardnum: 3283,
      fourthcardnum: 4904,
      expireyear: 27,
      expiremonth: 07,
      cvv: 766,
      yourname: "Salah Ayman",
      cardcolor: Color.fromARGB(255, 34, 170, 79),
    ),
  ];

  List<Transaction> transactions = [
    Transaction(
        Statetransimage: "transaction-success",
        Statetranstext: "Successfull paymant",
        datetrans: "Yesterday",
        amounttrans: "\$100.00"),
    Transaction(
        Statetransimage: "transaction-success",
        Statetranstext: "Successfull paymant",
        datetrans: "Yesterday",
        amounttrans: "\$100.00"),
    Transaction(
        Statetransimage: "transaction-success",
        Statetranstext: "Successfull paymant",
        datetrans: "Yesterday",
        amounttrans: "\$100.00"),
    Transaction(
        Statetransimage: "transaction-success",
        Statetranstext: "Successfull paymant",
        datetrans: "Yesterday",
        amounttrans: "\$100.00"),
  ];
  Homepage({super.key});
  static late double width;
  static late double height;
  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: DefaultColors.defaultGrey,
      body: SafeArea(
        child: Container(
          width: width,
          height: height,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: height * 0.02,
              ),

              /*
              App bar
              */
              const Appbar(),
              Padding(
                padding: const EdgeInsets.only(right: 70, top: 6, left: 15),
                child: Text(
                  "manage your banking card with my wallet app",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.grey.withOpacity(0.8),
                  ),
                ),
              ),

              /*
              My Card container
              */
              Container(
                height: height * 0.27,

                // must give to the page view  height to show the children page view,and if not give height the programm throw Exception
                child: PageView.builder(
                  controller: pageviewcontroller,
                  physics: const BouncingScrollPhysics(),
                  itemCount: cards.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, index) {
                    return cards[index];
                  },
                ),
              ),

              /*
              smooth page indicator
              */
              Padding(
                padding: EdgeInsets.only(left: width * 0.39),
                child: SmoothPageIndicator(
                  axisDirection: Axis.horizontal,
                  controller: pageviewcontroller,
                  count: cards.length,
                  effect: ExpandingDotsEffect(
                    dotWidth: 13,
                    activeDotColor: Colors.grey.shade800,
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.02,
              ),

              /*
              Row --> 2 buttons (send + pay ) + container for ( balance )
              */
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  //send button
                  Servicebutton(
                      imageservice: "assets/icons/send.png",
                      textservice: "send"),

                  // balance for card
                  Cardbalance(),

                  //pay button
                  Servicebutton(
                    imageservice: "assets/icons/pay.png",
                    textservice: "pay",
                  ),
                ],
              ),
              Padding(
                padding:
                    EdgeInsets.only(top: height * 0.02, left: width * 0.06),
                child: const Text(
                  "History",
                  style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
                ),
              ),

              /*
              History transactions sections
              */
              Container(
                width: width,
                height: height * 0.3138,
                child: ListView.builder(
                  itemCount: transactions.length,
                  physics: BouncingScrollPhysics(),
                  itemBuilder: (BuildContext context, index) {
                    return (Transactionitem(
                      transitem: transactions[index],
                    ));
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
