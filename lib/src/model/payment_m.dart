import 'package:flutter/material.dart';

class PaymentModal {
  String date;
  String details;
  double amount;
  Color textColor;

  PaymentModal({
    required this.date,
    required this.details,
    required this.amount,
    required this.textColor,
  });

  PaymentModal.fromJson(Map<String, dynamic> json)
      : date = json['date'],
        details = json['details'],
        amount = json['amount'].toDouble(),
        textColor = Color(json['textColor']);

  Map<String, dynamic> toJson() {
    return {
      'date': date,
      'details': details,
      'amount': amount,
      'textColor': textColor.value,
    };
  }
}
