import 'package:flutter/material.dart';

import '../data.dart';
import 'mypiechart.dart';

class ExpenseSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            'My expenses',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ),
        Expanded(
          child: new ListView(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Expanded(
                    flex: 5,
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: expenses
                            .map((values) => Padding(
                                  padding: const EdgeInsets.all(2.0),
                                  child: Row(
                                    children: <Widget>[
                                      CircleAvatar(
                                        radius: 5,
                                        backgroundColor:
                                            pieColors[expenses.indexOf(values)],
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        values['name'],
                                        style: TextStyle(fontSize: 18),
                                      )
                                    ],
                                  ),
                                ))
                            .toList(),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 5,
                    child: MyPieChart(),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
