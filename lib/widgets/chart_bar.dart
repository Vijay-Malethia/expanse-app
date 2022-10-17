import 'package:flutter/material.dart';

class ChartBar extends StatelessWidget {
  final String label;
  final double spendigAmount;
  final double spendigPctOfTotal;

  ChartBar(this.label, this.spendigAmount, this.spendigPctOfTotal);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            height: 20,
            child: FittedBox(
                child: Text('₹${spendigAmount.toStringAsFixed(0)} '))),
        SizedBox(
          height: 5,
        ),
        Container(
          height: 70,
          width: 10,
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  // border: Border.all(color: Colors.amber, width: 1.0),
                  color: Color.fromARGB(255, 139, 231, 243),
                  // borderRadius: BorderRadius.circular(2),
                ),
              ),
              FractionallySizedBox(
                heightFactor: spendigPctOfTotal,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Text(label),
      ],
    );
  }
}
