import 'package:flutter/foundation.dart';

class ItemData {
  String uuid;
  String name;
  String category;
  String totalPrice;
  String purchasePrice;
  String sellingPrice;
  int quantity;

  ItemData(
      {@required this.uuid,
      @required this.name,
      @required this.category,
      @required this.totalPrice,
      @required this.purchasePrice,
      @required this.sellingPrice,
      @required this.quantity});

  factory ItemData.fromMap(Map<String, dynamic> json) => ItemData(
    uuid: json['uuid'],
    name: json['name'],
    category: json['category'],
    totalPrice: json['totalPrice'],
    purchasePrice: json['purchasePrice'],
    sellingPrice: json['sellingPrice'],
    quantity: json['quantity']
  );

  Map<String, dynamic> toMap() => {
    "uuid": uuid,
    "name": name,
    "category": category,
    "totalPrice": totalPrice,
    "purchasePrice": purchasePrice,
    "sellingPrice":sellingPrice,
    "quantity": quantity
  };
}
