import 'package:flutter/material.dart';
import 'package:flutter_fuel/model/Refuel.dart';

class RefuelTile extends StatelessWidget {
  final String currency;
  final String total;
  final String price;
  final String amount;
  final String id;
  RefuelTile(
      {this.total, this.price, this.amount, this.currency = 'PLN', this.id});
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text('$total $currency, ($price x $amount)'),
        subtitle: Text('Lublin/Rury $id'),
        trailing: SizedBox(
          width: 60,
          child: Icon(Icons.more_vert),
        ),
        dense: true,
        onLongPress: () {
          print('edit item ------------------');
        },
      ),
    );
  }
}
