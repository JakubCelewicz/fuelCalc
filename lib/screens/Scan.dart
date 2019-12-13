import 'package:flutter/material.dart';
import 'package:flutter_fuel/refuels.dart';
import 'package:provider/provider.dart';
import 'package:flutter_fuel/refuels.dart';
import 'package:flutter_fuel/model/Refuel.dart';

class Scan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Scan receipt'),
      ),
      body: Container(
        child: Center(
          child: RaisedButton(
            child: Text('Scan photo'),
            onPressed: () {
              Provider.of<Refuels>(context).getRefuelData(Refuel(
                price: 6.66,
                amount: 66.6,
                mileage: 188.246,
              ));
              Navigator.pop(context);
              print('data passed to Form');
            },
          ),
        ),
      ),
    );
  }
}
