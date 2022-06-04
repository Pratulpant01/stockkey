import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:numeral/numeral.dart';

import '../constant/constant.dart';
import 'descriptionWidget.dart';

class descriptionCard extends StatelessWidget {
  descriptionCard(
      {required this.companyName,
      required this.industry,
      required this.MarketCap,
      required this.lastVolTraded,
      required this.sectorName,
      required this.symbolName});

  String companyName;
  String industry;
  int MarketCap;
  int lastVolTraded;
  String symbolName;
  String sectorName;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        children: [
          Center(
            child: Flexible(
              child: Text(
                companyName,
                overflow: TextOverflow.ellipsis,
                style: stockNameStyle.copyWith(fontSize: 25),
              ),
            ),
          ),
          descriptionWidget(
            symbol: symbolName,
            sector: sectorName,
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Industry",
            style: GoogleFonts.actor(
              color: Color(0xff192d45),
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            industry,
            style: GoogleFonts.adamina(
              color: Color(0xff85609F),
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Market Cap",
            style: GoogleFonts.actor(
              color: Color(0xff192d45),
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            Numeral(MarketCap).format(),
            style: GoogleFonts.adamina(
              color: Color(0xff85609F),
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Last Volume Traded",
            style: GoogleFonts.actor(
              color: Color(0xff192d45),
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            Numeral(lastVolTraded).format(),
            style: GoogleFonts.adamina(
              color: Color(0xff2CCB70),
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          )
        ],
      ),
    );
  }
}
