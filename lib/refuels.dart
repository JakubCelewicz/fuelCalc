import 'package:flutter/material.dart';
import 'model/Refuel.dart';

class Refuels extends ChangeNotifier {
  List<Refuel> refuels = [
    Refuel(price: 4.77, amount: 44.38, mileage: 125000),
  ];

  void addRefuel(Refuel newRefuel) {
    refuels.add(newRefuel);
    notifyListeners();
  }
}
