import 'package:uuid/uuid.dart';

var uuid = new Uuid();

class Refuel {
  double price;
  double amount;
  double mileage;
  final id = uuid.v1();

  Refuel({this.price, this.amount, this.mileage});

  double get spend {
    if (price != null && amount != null) {
      return price * amount;
    } else {
      return 0;
    }
  } //TODO improve this
}
