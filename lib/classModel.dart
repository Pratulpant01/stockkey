import 'package:flutter/material.dart';

class Stocks {
  Stocks(
      {required this.companyName,
      required this.industry,
      required this.MarketCap,
      required this.lastVolTraded,
      required this.sectorName,
      required this.symbolName,
      required this.price});

  String companyName;
  String industry;
  int MarketCap;
  int lastVolTraded;
  String symbolName;
  String sectorName;
  double price;

  factory Stocks.fromJson(Map<String, dynamic> json) {
    return Stocks(
      companyName: json["companyName"],
      industry: json["industry"],
      MarketCap: json['marketCap'],
      lastVolTraded: json["volume"],
      sectorName: json['sector'],
      symbolName: json['symbol'],
      price: json['price'],
    );
  }
}

List<Stocks> stockList = [];
