import 'package:flutter/material.dart';
import 'package:flutter_fuel/model/Refuel.dart';
import 'package:flutter_fuel/widgets/RefuelTile.dart';

class RefuelList extends StatefulWidget {
  final List<Refuel> refuels;
  RefuelList({this.refuels});

  @override
  _RefuelListState createState() => _RefuelListState();
}

class _RefuelListState extends State<RefuelList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return RefuelTile(
          total: widget.refuels[index].spend.toStringAsFixed(2),
          price: widget.refuels[index].price.toString(),
          amount: widget.refuels[index].amount.toString(),
        );
      },
      itemCount: widget.refuels.length,
    );
  }
}
