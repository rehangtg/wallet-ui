// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MyCards extends StatelessWidget {
  final double saldo;
  final int cardNumber;
  final int expiredMonth;
  final int expiredYear;
  final color;

  const MyCards({
    Key? key,
    required this.saldo,
    required this.cardNumber,
    required this.expiredMonth,
    required this.expiredYear,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Container(
        width: 300,
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10),
            Text(
              'Saldo',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            SizedBox(height: 10),
            Text(
              '\Rp.' + saldo.toString(),
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                // nomer kartu
                Text(
                  cardNumber.toString(),
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                // nomer expired
                Text(
                  expiredMonth.toString() + '/' + expiredYear.toString(),
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
