import 'package:flutter/material.dart';

class AccountCard extends StatelessWidget {

  final String title;
  final String amount;

  AccountCard({
    this.title,
    this.amount
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Color(0xFF2C3E50),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            title,
            style: TextStyle(
              color: Colors.white,
              fontSize: 16.0,
              fontWeight: FontWeight.bold
            )
          ),
          Text(
            amount,
            style: TextStyle(
              color: Colors.white,
              fontSize: 35.0,
              fontWeight: FontWeight.bold
            )
          ),
        ],
      )
    );
  }
}