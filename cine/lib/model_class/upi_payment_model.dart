
import 'package:flutter/material.dart';
class UpiPaymentModel {
  late String image;
  late String payment;

  UpiPaymentModel({
    required this.image,
    required this.payment,
  });

  factory UpiPaymentModel.fromjson(Map<String, dynamic> json) {
    return UpiPaymentModel(
        image: json['image']?? "",
        payment: json['payment']?? ""
    );
  }
}
