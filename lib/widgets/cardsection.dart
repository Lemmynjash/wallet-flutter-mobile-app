import 'package:flutter/material.dart';
import 'package:master_card_app/data.dart';

import 'carddetails.dart';

class CardSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            alignment: Alignment.topLeft,
            child: Text(
              'My card selection',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            )),
        Expanded(
          child: ListView.builder(
              itemCount: 2,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, i) {
                return Container(
                  width: MediaQuery.of(context)
                      .size
                      .width, //getting the device width
                  margin: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
                  decoration: BoxDecoration(
                      boxShadow: customShadow,
                      color: primaryColor,
                      borderRadius: BorderRadius.circular(20)),
                  child: Stack(children: <Widget>[
                    Positioned.fill(
                        bottom: -200,
                        top: 150,
                        child: Container(
                          decoration: BoxDecoration(
                              boxShadow: customShadow,
                              shape: BoxShape.circle,
                              color: Colors.white38),
                        )),
                    Positioned.fill(
                        left: -300,
                        bottom: -100,
                        top: -100,
                        child: Container(
                          decoration: BoxDecoration(
                              boxShadow: customShadow,
                              shape: BoxShape.circle,
                              color: Colors.white38),
                        )),
                        CardDetails()
                  ]),
                );
              }),
        )
      ],
    );
  }
}
