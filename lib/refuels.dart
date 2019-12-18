import 'package:flutter/material.dart';
import 'model/Refuel.dart';

class Refuels extends ChangeNotifier {
  List<Refuel> _refuels = [
    // Refuel(price: 4.77, amount: 44.38, mileage: 125000),
  ];

  Refuel _newRefuel;

  get refuels {
    return _refuels;
  }

  get newRefuel {
    return _newRefuel;
  }

  void addRefuel(Refuel newRefuel) {
    _refuels.add(newRefuel);
    _newRefuel = Refuel();
    notifyListeners();
  }

  void removeRefuel(id) {
    print('remove');
    _refuels.removeWhere((item) => item.id == id);
    notifyListeners();
  }

  void getRefuelData(Refuel refuelData) {
    _newRefuel = refuelData;
    notifyListeners();
  }
}
