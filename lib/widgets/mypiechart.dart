import 'dart:math';

import 'package:flutter/material.dart';

import '../data.dart';

class MyPieChart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var pieChartPainter = PieChartPainter();
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        height: 200,
        width: 200,
        decoration: BoxDecoration(
            boxShadow: customShadow,
            color: primaryColor,
            shape: BoxShape.circle),
        child: Stack(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(.0),
              child: CustomPaint(
                foregroundPainter: pieChartPainter,
                child: Container(),
              ),
            ),
            Center(
              child: Container(
                height: 80,
                width: 80,
                decoration: BoxDecoration(
                    boxShadow: customShadow,
                    color: primaryColor,
                    shape: BoxShape.circle),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PieChartPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint

    Offset center = Offset(size.width / 2, size.height / 2);
    double radius = min(size.width / 2, size.height / 2);

    var paint = new Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 50; 

    double total = 0;
    expenses.forEach((element) {
      total += element['amount'];
    });

    var startRadian = -pi / 2;

    for (int i = 0; i < expenses.length; i++) {
      var currentExpense = expenses[i];
      var sweepRadian = (currentExpense['amount'] / total) * 2 * pi;
      paint.color = pieColors[i];
      canvas.drawArc(Rect.fromCircle(center: center, radius: radius),
          startRadian, sweepRadian, false, paint);
      startRadian += sweepRadian;
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return null;
  }
}
