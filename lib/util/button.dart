import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String iconGambarsu;
  final String buttonSu;

  const MyButton({
    Key? key,
    required this.buttonSu,
    required this.iconGambarsu,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // send button
        Container(
          height: 100,
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
              color: Color.fromARGB(255, 255, 255, 255),
              borderRadius: BorderRadius.circular(25),
              boxShadow: [
                BoxShadow(
                  color: Colors.pink.shade300,
                  blurRadius: 30,
                  spreadRadius: 2,
                ),
              ]),
          child: Center(
            child: Image.asset(iconGambarsu),
          ),
        ),
        SizedBox(
          height: 4,
        ),
        //text
        Text(
          buttonSu,
          style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.grey[500]),
        ),
      ],
    );
  }
}
