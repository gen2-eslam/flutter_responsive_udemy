import 'package:flutter/material.dart';

class AllExpensesItemModel {
  final String title;
  final String date;
  final String amount;
  final String image;

  const AllExpensesItemModel({
    required this.title,
    required this.date,
    required this.amount,
    required this.image,
  });
}