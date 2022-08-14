import 'dart:math';

import 'package:flutter/material.dart';

class ChartBar extends StatelessWidget {
  final String label;
  final double spendingAmount;
  final double spendingPctOfTotal;

  ChartBar(this.label, this.spendingAmount, this.spendingPctOfTotal);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        SizedBox(
          width: 10,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 20,
              width: 250,
              child: Stack(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: Color.fromARGB(255, 41, 99, 232), width: 0.5),
                      color: Color.fromARGB(255, 199, 214, 248),
                      borderRadius: BorderRadius.circular(100),
                    ),
                  ),
                  FractionallySizedBox(
                    widthFactor: spendingPctOfTotal,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Theme.of(context).primaryColor,
                        borderRadius: BorderRadius.circular(100),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 22,
              child: FittedBox(
                fit: BoxFit.cover,
                child: Text('\$${spendingAmount.toStringAsFixed(0)}'),
              ),
            ),
          ],
        ),
        SizedBox(
          width: 10,
        ),
        Align(alignment: Alignment(-0.7, -0.3), child: Text(label)),
      ],
    );
  }
}
