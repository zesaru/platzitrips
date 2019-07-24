import 'package:flutter/material.dart';
import 'package:platzitrips/widgets/gradient_back.dart';

class SignInScreen extends StatefulWidget {
  @override
  State createState() => _SignInScreen();
}

class _SignInScreen extends State<SignInScreen> {

  @override
  Widget build(BuildContext context) {
    return signInGoogleUI();
  }

  Widget signInGoogleUI() {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          GradientBack("", null),
          Column(
          children: <Widget>[
            Text("Welcome \n This is your Travel App",
              style: TextStyle(
                fontSize: 30.0,
                fontFamily: "Lato",
                color: Colors.white,
                fontWeight: FontWeight.bold
              ),
            ),
          ],
          )
        ],
      ),
    );
  }
}
