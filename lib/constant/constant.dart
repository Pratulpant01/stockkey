import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:introduction_screen/introduction_screen.dart';

Color listBgColor = Color.fromARGB(255, 206, 239, 248);

BoxDecoration klistDecoration = BoxDecoration(
  borderRadius: BorderRadius.only(
    topLeft: Radius.circular(20),
    topRight: Radius.circular(20),
  ),
  color: listBgColor,
);

TextStyle titleStyle = GoogleFonts.aclonica(
  color: Colors.white,
  fontSize: 20,
  fontWeight: FontWeight.bold,
);

TextStyle stockNameStyle = GoogleFonts.abel(
  color: Color(0xff2b3e57),
  fontSize: 20,
  fontWeight: FontWeight.bold,
);

TextStyle descriptionStyle = GoogleFonts.adventPro(
  color: Colors.black54,
  fontWeight: FontWeight.bold,
  fontSize: 15,
);

PageDecoration introDecoration = PageDecoration(
  imagePadding: EdgeInsets.all(10),
);

BoxDecoration loginDecoration = BoxDecoration(
  gradient: LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      Color(0xff73AEF5),
      Color(0xff61A4F1),
      Color(0xff478DE0),
      Color(0xff398AE5),
    ],
  ),
);

BoxDecoration textFieldDecoration = BoxDecoration(
    color: Color(0xFF6CA8F1),
    borderRadius: BorderRadius.circular(10),
    boxShadow: [
      BoxShadow(
        color: Colors.black12,
        blurRadius: 6.0,
        offset: Offset(0, 2),
      )
    ]);

InputDecoration textFieldInputDeco = InputDecoration(
  border: InputBorder.none,
  contentPadding: EdgeInsets.all(10),
  hintText: "Enter your password",
  hintStyle: TextStyle(
    color: Colors.white,
  ),
);
