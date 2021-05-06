class DepthEntity {
  double price;
  double amount;
  String quantity;
  String side;
  String orderType;

  DepthEntity(
      {this.price, this.amount, this.quantity, this.side, this.orderType});
  DepthEntity.fromJson(Map<String, dynamic> json) {
    price = (json['Price'] as num)?.toDouble();
    amount = (json['Amount'] as num)?.toDouble();
    quantity = json['Quantity'].toString();
    side = json['Side'].toString();
    orderType = json['OrderType'].toString();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Price'] = this.price;
    data['Amount'] = this.amount;
    data['Quantity'] = this.quantity;
    data['Side'] = this.side;
    data['OrderType'] = this.orderType;
    return data;
  }

  @override
  String toString() {
    return 'Data{price: $price, amount: $amount}';
  }
}
