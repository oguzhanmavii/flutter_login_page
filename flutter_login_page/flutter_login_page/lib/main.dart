import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:login_viaspa/widgets/login/loginpage.dart';
import 'package:login_viaspa/widgets/logindark/loginpagedark.dart';

main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Login',
    home: Login(),
  ));
}

class Login extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return LoginLandingState();
  }
}

class LoginLandingState extends State<Login> {
  bool darkModeOn = false;

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitDown,
      DeviceOrientation.portraitUp
    ]); //ONLY WORK ON PORTRAIT MODE
    return darkModeOn ? ViaspaDark() : Viaspa();
  }
}
