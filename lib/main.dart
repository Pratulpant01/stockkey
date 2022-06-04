import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:stockkey/classModel.dart';
import 'package:http/http.dart' as http;
import 'package:stockkey/screens/loginScreen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

final String apiKey = "6894b94360381224e081e113ad4c527b";
//
// c948b89e974f1cc53e854271760b61cd

bool isCompleted = false;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Future<List<Stocks>> getStocks() async {
    stockList = [];
    final response = await http.get(
      Uri.parse(
          "https://financialmodelingprep.com/api/v3/stock-screener?exchange=NSE&apikey=$apiKey"),
    );

    if (response.statusCode == 200) {
      List<dynamic> values = [];
      values = jsonDecode(response.body);
      if (values.length > 0) {
        for (int i = 0; i < values.length; i++) {
          if (values[i] != null) {
            Map<String, dynamic> map = values[i];
            stockList.add(Stocks.fromJson(map));
          }
        }
        setState(
          () {
            stockList;
            isCompleted = true;
          },
        );
      }
    }
    return stockList;
  }

  @override
  void initState() {
    getStocks();
    // Timer.periodic(
    //   Duration(seconds: 10),
    //   ((timer) => getStocks()),
    // );

    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}
