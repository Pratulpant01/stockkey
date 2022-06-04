import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stockkey/constant/constant.dart';

import 'descriptionCard.dart';

class stockCard extends StatelessWidget {
  stockCard(
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

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Builder(builder: (context) {
        return GestureDetector(
          onTap: () {
            showBottomSheet(
                context: context,
                builder: (context) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Expanded(
                      child: Container(
                        height: 400,
                        decoration: klistDecoration.copyWith(
                          color: Colors.white,
                        ),
                        child: descriptionCard(
                          companyName: companyName,
                          sectorName: sectorName,
                          symbolName: symbolName,
                          industry: industry,
                          MarketCap: MarketCap,
                          lastVolTraded: lastVolTraded,
                        ),
                      ),
                    ),
                  );
                });
          },
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        child: Text(
                          companyName,
                          style: stockNameStyle,
                        ),
                      ),
                      Text(
                        "NSE",
                        style: descriptionStyle,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            industry,
                            style: GoogleFonts.adventPro(
                              color: Colors.grey[500],
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Text(
                        price.toString(),
                        style: GoogleFonts.alata(
                          color: Colors.green,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        );
      }),
    );
  }
}
