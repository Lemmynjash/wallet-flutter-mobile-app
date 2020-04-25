import 'package:flutter/material.dart';
import 'package:master_card_app/data.dart';

class CardDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Align(
          alignment: Alignment.topLeft,
          child: Container(
            child: Image.asset('images/mastercardlogo.png'),
            width: 250,
          ),
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: Padding(
            //for more visibility

            padding: const EdgeInsets.all(20.0),
            child: Container(
              height: 50,
              width: 100,
              decoration: BoxDecoration(
                  boxShadow: customShadow,
                  borderRadius: BorderRadius.circular(15),
                  color: primaryColor),
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomLeft,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Text(
                      '*** *****',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '123',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                Text(
                  'MY PLATINUM CARD',
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
