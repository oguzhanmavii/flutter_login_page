import 'package:flutter/material.dart';
import 'package:login_viaspa/tools.dart';
import 'package:login_viaspa/widgets/login/forgotpw/forgotpassword.dart';
import 'package:login_viaspa/widgets/logindark/forgotpassword.dart';

class UsertoForgotDark extends StatefulWidget {
  @override
  _UsertoForgotState createState() => _UsertoForgotState();
}

class _UsertoForgotState extends State<UsertoForgotDark> {
  String userNameSaved = "";
  String passwordSaved = "";

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MyTools.responsiveWidth(0.9, context),
      height: MyTools.reponsiveHeight(0.45, context),
      child: Form(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextFormField(
            cursorColor: Colors.amberAccent,
            decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide(color: MyTools.myColor[4]),
              ),
              prefixIcon: Padding(
                padding:
                    EdgeInsets.only(top: 15, left: 5, right: 0, bottom: 15),
                child: SizedBox(
                  child: Image.asset("assets/images/icon1.png"),
                  height: 3,
                ),
              ),
              filled: true,
              fillColor: MyTools.myColor[8],
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide(style: BorderStyle.none),
              ),
              hintText: "Username",
              hintStyle: TextStyle(
                  fontStyle: FontStyle.italic, color: MyTools.myColor[0]),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide(style: BorderStyle.none),
              ),
            ),
            onChanged: (s) {
              userNameSaved = s;
            },
          ),
          SizedBox(height: MyTools.reponsiveHeight(0.015, context)),
          TextFormField(
            cursorColor: Colors.amberAccent,
            decoration: InputDecoration(
              prefixIcon: Padding(
                padding:
                    EdgeInsets.only(top: 15, left: 5, right: 0, bottom: 15),
                child: SizedBox(
                  child: Image.asset("assets/images/icon2.png"),
                  height: 3,
                ),
              ),
              filled: true,
              fillColor: MyTools.myColor[8],
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide(color: MyTools.myColor[4]),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide(style: BorderStyle.none),
              ),
              hintText: "Password",
              hintStyle: TextStyle(
                  fontStyle: FontStyle.italic, color: MyTools.myColor[0]),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide(style: BorderStyle.none),
              ),
            ),
            obscureText: true,
            onChanged: (s) {
              passwordSaved = s;
            },
          ),
          SizedBox(height: MyTools.reponsiveHeight(0.02, context)),
          Container(
            width: MyTools.responsiveWidth(0.9, context),
            height: MyTools.reponsiveHeight(0.08, context),
            child: RaisedButton(
              onPressed: () {
                print("Output username $userNameSaved");
                print("Output password $passwordSaved");
              },
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(80.0)),
              padding: EdgeInsets.all(0.0),
              child: Ink(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color.fromARGB(255, 255, 97, 114),
                      Color.fromARGB(255, 254, 162, 109),
                    ],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(80.0)),
                ),
                child: Container(
                  constraints: BoxConstraints(
                      minWidth: 88.0,
                      minHeight: 36.0), // min sizes for Material buttons
                  alignment: Alignment.center,
                  child: Text(
                    'LOGIN',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: MyTools.myColor[0],
                        fontFamily: "Varelar",
                        fontSize: 22),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: MyTools.reponsiveHeight(0.01, context)),
          FlatButton(
            child: Text(
              "Forgot Password ?",
              style: TextStyle(
                  fontFamily: "Varelar",
                  color: MyTools.myColor[6],
                  fontSize: 16,
                  fontWeight: FontWeight.w100,
                  letterSpacing: 2),
            ),
            onPressed: () {
              //Forgot Password Section
              showDialog(
                  context: context, builder: (context) => ForgotPassDark());
            },
          ),
        ],
      )),
    );
  }
}
