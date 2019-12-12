import 'package:flutter/material.dart';
import 'model/Refuel.dart';

class Refuels extends ChangeNotifier {
  List<Refuel> refuels = [
    Refuel(price: 4.77, amount: 44.38, mileage: 125000),
//    Refuel(price: 4.79, amount: 42.11, mileage: 125490),
//    Refuel(price: 4.87, amount: 39.90, mileage: 125993),
//    Refuel(price: 5.11, amount: 40.22, mileage: 126193),
  ];

  void addRefuel(Refuel newRefuel) {
    refuels.add(newRefuel);
  }
}
