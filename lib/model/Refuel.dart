class Refuel {
  double price;
  double amount;
  double mileage;

  Refuel({this.price, this.amount, this.mileage});

  double get spend {
    if (price != null && amount != null) {
      return price * amount;
    } else {
      return 0;
    }
  } //TODO improve this
}
