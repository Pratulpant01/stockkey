import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:stockkey/constant/constant.dart';
import 'package:stockkey/screens/homepage.dart';

class SignupScreen extends StatelessWidget {
  final _auth = FirebaseAuth.instance;
  String? emailid;
  String? password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          width: double.infinity,
          padding: EdgeInsets.only(top: 50, left: 20, right: 20),
          decoration: loginDecoration,
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Center(
                  child: Hero(
                    tag: 1,
                    child: Text(
                      "Stock Key",
                      style: titleStyle.copyWith(
                        fontSize: 25,
                      ),
                    ),
                  ),
                ),
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Register Now ...",
                        style: GoogleFonts.alegreyaSansSc(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        decoration: textFieldDecoration,
                        child: TextField(
                          onChanged: (newValue) {
                            emailid = newValue;
                          },
                          keyboardType: TextInputType.emailAddress,
                          style: TextStyle(
                            color: Colors.white,
                          ),
                          decoration: textFieldInputDeco.copyWith(
                            hintText: "Enter your email id",
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        decoration: textFieldDecoration,
                        child: TextField(
                          onChanged: (newValue) {
                            password = newValue;
                          },
                          obscureText: true,
                          keyboardType: TextInputType.emailAddress,
                          style: TextStyle(
                            color: Colors.white,
                          ),
                          decoration: textFieldInputDeco,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Center(
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Color(0xFF6CA8F1),
                          ),
                          onPressed: () {
                            if (emailid != null && password != null) {
                              _auth.createUserWithEmailAndPassword(
                                  email: emailid!, password: password!);
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => HomePage(),
                                ),
                              );
                            }
                          },
                          child: Text("Sign Up!"),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Center(
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Text(
                            "Already have an account? Login Now!",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
