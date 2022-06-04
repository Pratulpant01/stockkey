import 'package:flutter/material.dart';
import 'package:stockkey/constant/constant.dart';

class descriptionWidget extends StatelessWidget {
  descriptionWidget({required this.symbol, required this.sector});
  String symbol;
  String sector;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 20,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Row(
                  children: [
                    Text(
                      "Symbol- ",
                      style: descriptionStyle,
                    ),
                    Flexible(
                      child: Text(
                        overflow: TextOverflow.ellipsis,
                        symbol,
                        style: TextStyle(color: Colors.blueAccent),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    Text(
                      "Sector- ",
                      style: descriptionStyle,
                    ),
                    Flexible(
                      child: Text(
                        overflow: TextOverflow.ellipsis,
                        sector,
                        style: TextStyle(color: Colors.blueAccent),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
