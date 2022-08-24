// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:walletui/util/button.dart';
import 'package:walletui/util/list.dart';
import 'package:walletui/util/my_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // page controller
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 29, 29, 29),
        body: SafeArea(
          child: Column(children: [
            // app bar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        'My',
                        style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 230, 230, 230),
                        ),
                      ),
                      Text(
                        ' Cards',
                        style: TextStyle(
                          fontSize: 26,
                          color: Color.fromARGB(255, 230, 230, 230),
                        ),
                      ),
                    ],
                  ),

                  // plus buttton
                  Container(
                    padding: EdgeInsets.all(3),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 230, 230, 230),
                      shape: BoxShape.circle,
                    ),
                    child: Icon(Icons.add),
                  )
                ],
              ),
            ),

            SizedBox(height: 25),

            // card
            Container(
              height: 200,
              child: PageView(
                scrollDirection: Axis.vertical,
                controller: _controller,
                children: [
                  MyCards(
                    saldo: 4.389,
                    cardNumber: 92369451,
                    expiredMonth: 10,
                    expiredYear: 22,
                    color: Colors.deepPurple[300],
                  ),
                  MyCards(
                    saldo: 3.412,
                    cardNumber: 29836591,
                    expiredMonth: 12,
                    expiredYear: 24,
                    color: Colors.deepOrange[300],
                  ),
                  MyCards(
                    saldo: 24.823,
                    cardNumber: 92183742,
                    expiredMonth: 07,
                    expiredYear: 22,
                    color: Colors.red[300],
                  ),
                ],
              ),
            ),

            SizedBox(
              height: 23,
            ),

            SmoothPageIndicator(
              controller: _controller,
              count: 3,
              effect: ExpandingDotsEffect(
                activeDotColor: Colors.pink.shade300,
              ),
            ),

            SizedBox(
              height: 25,
            ),

            // 3 button send + bayar + bill

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //send button
                  MyButton(
                    buttonSu: 'Send',
                    iconGambarsu: 'lib/icons/send-money.png',
                  ),
                  MyButton(
                    buttonSu: 'Pay',
                    iconGambarsu: 'lib/icons/credit-card.png',
                  ),
                  MyButton(
                    buttonSu: 'Bills',
                    iconGambarsu: 'lib/icons/bill.png',
                  ),

                  //pay button

                  //bill button
                ],
              ),
            ),

            SizedBox(height: 25),

            // kolom => stats + transaksi
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Column(
                children: [
                  //stats

                  MyLisTile(
                    iconImagecok: 'lib/icons/statistics.png',
                    titleSubnameajg: 'Statistik',
                    titlecok: 'Withdraw and Deposit',
                  ),
                  MyLisTile(
                    iconImagecok: 'lib/icons/transaction.png',
                    titleSubnameajg: 'Transaksi',
                    titlecok: 'Mutasi Rekening',
                  ),

                  // transaksi
                ],
              ),
            )
          ]),
        ));
  }
}
