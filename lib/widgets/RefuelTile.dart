import 'package:flutter/material.dart';
import 'package:flutter_fuel/model/Refuel.dart';

class RefuelTile extends StatelessWidget {
  final String total;
  final String price;
  final String amount;
  RefuelTile({this.total, this.price, this.amount});
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
          title: Text(price),
          subtitle: Text(amount),
          trailing: SizedBox(
            width: 100,
            child: Text(
              total,
              style: TextStyle(
                fontSize: 18.0,
              ),
            ),
          )),
    );
  }
}
