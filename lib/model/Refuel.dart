class Refuel {
  double price;
  double amount;
  int mileage;

  Refuel({this.price, this.amount, this.mileage});

  double get spend {
    return price * amount;
  }
}
