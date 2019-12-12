class Refuel {
  double price;
  double amount;
  double mileage;

  Refuel({this.price, this.amount, this.mileage});

  double get spend {
    return price * amount;
  }
}
