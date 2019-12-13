import 'package:flutter/material.dart';
import 'package:flutter_fuel/model/Refuel.dart';
import 'package:flutter_fuel/refuels.dart';
import 'package:flutter_fuel/constants.dart';
import 'package:provider/provider.dart';

class RefuelForm extends StatefulWidget {
  @override
  _RefuelFormState createState() => _RefuelFormState();
}

class _RefuelFormState extends State<RefuelForm> {
  var priceController = TextEditingController();
  var amountController = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    priceController.dispose();
    amountController.dispose();
    super.dispose();
  }

  double price;
  double amount;
  double mileage;
  @override
  Widget build(BuildContext context) {
    var newRefuel = Provider.of<Refuels>(context).newRefuel;
    print(newRefuel);

    if (newRefuel != null) priceController.text = newRefuel.price.toString();
    if (newRefuel != null) amountController.text = newRefuel.amount.toString();

    return Container(
      padding: EdgeInsets.all(20.0),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              SizedBox(
                width: 200.0,
                child: TextField(
                  controller: priceController,
                  decoration: InputDecoration(labelText: 'Fuel price'),
                  inputFormatters: [fuelPriceFormatter],
                  keyboardType: TextInputType.number,
                  onChanged: (newPrice) {
                    price = double.parse(newPrice);
                  },
                ),
              ),
              SizedBox(
                width: 20.0,
              ),
              Expanded(
                  child: TextField(
                controller: amountController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(labelText: 'Fuel amount'),
                onChanged: (newPrice) {
                  amount = double.parse(newPrice);
                },
              )),
            ],
          ),
          Row(
            children: <Widget>[
              SizedBox(
                width: 200,
                child: TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(labelText: 'Current mileage'),
                  onChanged: (newPrice) {
                    mileage = double.parse(newPrice);
                  },
                ),
              ),
              SizedBox(
                width: 20.0,
              ),
              Expanded(
                  child: RaisedButton(
                child: Icon(Icons.add),
                onPressed: () {
                  setState(() {
                    Provider.of<Refuels>(context).addRefuel(Refuel(
                      price: price,
                      amount: amount,
                      mileage: mileage,
                    ));
                  });
                },
              )),
            ],
          )
        ],
      ),
    );
  }
}
