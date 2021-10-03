import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:login_viaspa/tools.dart';
import 'package:login_viaspa/widgets/login/register/register_page.dart';
import 'package:login_viaspa/widgets/login/usertoforgot.dart';

class Viaspa extends StatefulWidget {
  @override
  _ViaspaState createState() => _ViaspaState();
}

class _ViaspaState extends State<Viaspa> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitDown,
      DeviceOrientation.portraitUp
    ]); //ONLY WORK ON PORTRAIT MODE
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
          width: MyTools.responsiveWidth(1, context),
          height: MyTools.reponsiveHeight(1, context),
          color: MyTools.myColor[0],
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(
                    top: MyTools.reponsiveHeight(0.04, context)),
                height: MyTools.reponsiveHeight(0.07, context),
                child: Image.asset(
                  "assets/images/logo.png",
                  color: MyTools.myColor[4],
                ),
              ),
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(
                    top: MyTools.reponsiveHeight(0.05, context)),
                child: Text(
                  "Login to Continue!",
                  style: TextStyle(
                      color: MyTools.myColor[2],
                      fontSize: 25,
                      fontFamily: "Varelar",
                      fontWeight: FontWeight.w700),
                ),
              ),

              UsertoForgot(), //TEXT INPUT, FORGOT PASSWORD, LOGIN BUTTON

              Container(
                width: MyTools.responsiveWidth(0.9, context),
                margin: EdgeInsets.only(
                    bottom: MyTools.reponsiveHeight(0.01, context)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: MyTools.responsiveWidth(0.25, context),
                      color: MyTools.myColor[6],
                      height: 1,
                    ),
                    Text("Social Login",
                        style: TextStyle(
                          color: MyTools.myColor[6],
                          fontSize: 18,
                          fontFamily: "Varelar",
                        )),
                    Container(
                      width: MyTools.responsiveWidth(0.25, context),
                      color: MyTools.myColor[6],
                      height: 1,
                    ),
                  ],
                ),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    child: Container(
                        height: MyTools.reponsiveHeight(0.055, context),
                        child: Image.asset("assets/images/f1.png")),
                    onTap: () {
                      //Facebook Social Icon Button Section
                    },
                  ),
                  SizedBox(
                    width: MyTools.responsiveWidth(0.06, context),
                  ),
                  InkWell(
                    child: Container(
                        height: MyTools.reponsiveHeight(0.055, context),
                        child: Image.asset("assets/images/f2.png")),
                    onTap: () {
                      //Google Social Icon Button Section
                    },
                  ),
                ],
              ),

              SizedBox(
                height: MyTools.reponsiveHeight(0.1, context),
              ),

              Container(
                alignment: Alignment.center,
                height: MyTools.reponsiveHeight(0.05, context),
                child: FlatButton(
                  child: RichText(
                      text: TextSpan(children: [
                    TextSpan(
                        text: "New Here? ",
                        style: TextStyle(
                            color: MyTools.myColor[6].withOpacity(0.85),
                            fontFamily: "Varelar",
                            fontSize: 16)),
                    TextSpan(
                        text: "Sign Up",
                        style: TextStyle(
                            color: MyTools.myColor[6],
                            fontFamily: "Varelar",
                            fontSize: 16,
                            fontWeight: FontWeight.w900))
                  ])),
                  onPressed: () {
                    //Sign Up Section
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => RegisterPageDark()));
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
