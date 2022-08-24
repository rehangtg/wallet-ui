import 'package:flutter/material.dart';

class MyLisTile extends StatelessWidget {
  final String iconImagecok;
  final String titlecok;
  final String titleSubnameajg;

  const MyLisTile({
    Key? key,
    required this.iconImagecok,
    required this.titleSubnameajg,
    required this.titlecok,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              //ikon
              Container(
                height: 80,
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Image.asset(iconImagecok),
              ),
              SizedBox(width: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    titlecok,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.grey[500],
                    ),
                  ),
                  // ignore: prefer_const_constructors
                  SizedBox(
                    height: 12,
                  ),
                  Text(
                    titleSubnameajg,
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.grey[600],
                      boxshadow: BoxShadow(blurRadius: 12),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Icon(Icons.arrow_forward),
        ],
      ),
    );
  }
}
