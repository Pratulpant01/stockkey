import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:flutter_svg/svg.dart';
import 'package:stockkey/constant/constant.dart';
import 'package:stockkey/screens/homepage.dart';

import 'loginScreen.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: IntroductionScreen(
      done: Text(
        "Next",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
      pages: [
        PageViewModel(
          title: "Get insights of every Stocks",
          body:
              "Grab all the financial and technical information of your stocks",
          image: SvgPicture.asset("assets/Intro 1.svg"),
          decoration: introDecoration,
        ),
        PageViewModel(
          title: "Interactive UI & Easy to Use",
          body: "Within few clicks, You can get all the information.",
          image: SvgPicture.asset("assets/Intro 2.svg"),
          decoration: introDecoration,
        ),
        PageViewModel(
          title: "Ready to check your stocks?",
          body: "Lets get started.",
          image: SvgPicture.asset("assets/Intro 3.svg"),
          decoration: introDecoration.copyWith(
            imagePadding: EdgeInsets.all(15),
          ),
        ),
      ],
      onDone: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => LoginScreen(),
          ),
        );
      },
      skip: Text("Skip"),
      next: Text("Next"),
      showNextButton: true,
      showSkipButton: true,
    ));
  }
}
