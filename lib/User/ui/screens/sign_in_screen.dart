import 'package:flutter/material.dart';
import 'package:platzitrips/widgets/gradient_back.dart';
import 'package:platzitrips/widgets/button_green.dart';
import 'package:platzitrips/User/bloc/bloc_user.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:firebase_auth/firebase_auth.dart';

class SignInScreen extends StatefulWidget {
  @override
  State createState() => _SignInScreen();
}

class _SignInScreen extends State<SignInScreen> {

  UserBloc userBloc;

  @override
  Widget build(BuildContext context) {
    userBloc = BlocProvider.of(context);
    return signInGoogleUI();
  }

  Widget signInGoogleUI() {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          GradientBack("", null),
          Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Welcome \n This is your Travel App",
              style: TextStyle(
                fontSize: 30.0,
                fontFamily: "Lato",
                color: Colors.white,
                fontWeight: FontWeight.bold
              ),
            ),
          ButtonGreen(text: "Login with Gmail",
            onPressed: () {
              userBloc.signIn().then((FirebaseUser user) => print("El usuario es $user.displayName") );
            },
            width: 300.0,
            height: 50.0,
          )
          ],
          )
        ],
      ),
    );
  }
}
