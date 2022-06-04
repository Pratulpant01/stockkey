import 'package:flutter/material.dart';
import 'package:stockkey/classModel.dart';
import 'package:stockkey/constant/constant.dart';

import '../widget/stockCard.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Center(
              child: Text(
                "Stock Key",
                style: titleStyle,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: Container(
                  decoration: loginDecoration,
                  child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: stockList.length,
                    itemBuilder: (context, index) {
                      return stockCard(
                          companyName: stockList.length > 0
                              ? stockList[index].companyName
                              : "",
                          industry: stockList.length > 0
                              ? stockList[index].industry
                              : "",
                          MarketCap: stockList.length > 0
                              ? stockList[index].MarketCap
                              : 0,
                          lastVolTraded: stockList.length > 0
                              ? stockList[index].lastVolTraded
                              : 0,
                          sectorName: stockList.length > 0
                              ? stockList[index].sectorName
                              : "",
                          symbolName: stockList.length > 0
                              ? stockList[index].symbolName
                              : "",
                          price: stockList.length > 0
                              ? stockList[index].price
                              : 0);
                    },
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
