import 'package:flutter/material.dart';
import 'package:flutter_fuel/widgets/RefuelTile.dart';
import 'package:flutter_fuel/refuels.dart';
import 'package:provider/provider.dart';

class RefuelList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<Refuels>(builder: (context, refuelsData, child) {
      return ListView.builder(
        itemBuilder: (context, index) {
          return Dismissible(
            key: Key(refuelsData.refuels[index].id.toString()),
            child: RefuelTile(
              total: refuelsData.refuels[index].spend.toStringAsFixed(2),
              price: refuelsData.refuels[index].price.toString(),
              amount: refuelsData.refuels[index].amount.toString(),
              id: refuelsData.refuels[index].id.toString(),
            ),
            onDismissed: (direction) {
              refuelsData.removeRefuel(refuelsData.refuels[index]);
              refuelsData.refuels.removeAt(index);
            },
            background: Container(
              color: Colors.red,
            ),
          );
        },
        itemCount: refuelsData.refuels.length,
      );
    });
  }
}
