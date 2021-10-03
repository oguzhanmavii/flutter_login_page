import 'package:flutter/material.dart';
import 'package:login_viaspa/tools.dart';
import 'package:login_viaspa/widgets/login/usertoforgot.dart';

class RegisterPageDark extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPageDark> {
  @override
  Widget build(BuildContext context) {
    String userNameSaved = "";
    String emailSaved = "";
    String passwordSaved = "";

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
                    top: MyTools.reponsiveHeight(0.02, context)),
                height: MyTools.reponsiveHeight(0.07, context),
                child: Image.asset(
                  "assets/images/logo.png",
                  color: MyTools.myColor[4],
                ),
              ),
              Container(
                height: MyTools.reponsiveHeight(0.06, context),
                alignment: Alignment.center,
                margin: EdgeInsets.only(
                    top: MyTools.reponsiveHeight(0.04, context),
                    bottom: MyTools.reponsiveHeight(0.005, context)),
                child: Text(
                  "Create New Account",
                  style: TextStyle(
                      color: MyTools.myColor[2],
                      fontSize: 25,
                      fontFamily: "Varelar",
                      fontWeight: FontWeight.w700),
                ),
              ),
              Container(
                width: MyTools.responsiveWidth(0.9, context),
                height: MyTools.reponsiveHeight(0.48, context),
                child: Form(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    TextFormField(
                      cursorColor: Colors.amberAccent,
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(color: MyTools.myColor[4]),
                        ),
                        prefixIcon: Padding(
                          padding: EdgeInsets.only(
                              top: 15, left: 5, right: 0, bottom: 15),
                          child: SizedBox(
                            child: Image.asset("assets/images/icon1.png"),
                            height: 3,
                          ),
                        ),
                        filled: true,
                        fillColor: MyTools.myColor[3],
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(style: BorderStyle.none),
                        ),
                        hintText: "Username",
                        hintStyle: TextStyle(fontStyle: FontStyle.italic),
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
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(color: MyTools.myColor[4]),
                        ),
                        prefixIcon: Padding(
                          padding: EdgeInsets.only(
                              top: 16, left: 5, right: 0, bottom: 16),
                          child: SizedBox(
                            child: Image.asset("assets/images/icon3.png"),
                            height: 3,
                          ),
                        ),
                        filled: true,
                        fillColor: MyTools.myColor[3],
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(style: BorderStyle.none),
                        ),
                        hintText: "E-mail",
                        hintStyle: TextStyle(fontStyle: FontStyle.italic),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(style: BorderStyle.none),
                        ),
                      ),
                      onChanged: (s) {
                        emailSaved = s;
                      },
                    ),
                    SizedBox(height: MyTools.reponsiveHeight(0.015, context)),
                    TextFormField(
                      cursorColor: Colors.amberAccent,
                      decoration: InputDecoration(
                        prefixIcon: Padding(
                          padding: EdgeInsets.only(
                              top: 15, left: 5, right: 0, bottom: 15),
                          child: SizedBox(
                            child: Image.asset("assets/images/icon2.png"),
                            height: 3,
                          ),
                        ),
                        filled: true,
                        fillColor: MyTools.myColor[3],
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(color: MyTools.myColor[4]),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(style: BorderStyle.none),
                        ),
                        hintText: "Password",
                        hintStyle: TextStyle(fontStyle: FontStyle.italic),
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
                    SizedBox(height: MyTools.reponsiveHeight(0.018, context)),
                    Container(
                      width: MyTools.responsiveWidth(0.9, context),
                      height: MyTools.reponsiveHeight(0.08, context),
                      child: RaisedButton(
                        onPressed: () {
                          //REGISTER BUTTON SECTION
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
                            borderRadius:
                                BorderRadius.all(Radius.circular(80.0)),
                          ),
                          child: Container(
                            constraints: BoxConstraints(
                                minWidth: 88.0,
                                minHeight:
                                    36.0), // min sizes for Material buttons
                            alignment: Alignment.center,
                            child: Text(
                              'REGISTER',
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
                  ],
                )),
              ),
              SizedBox(height: MyTools.reponsiveHeight(0.18, context)),
              Container(
                child: FlatButton(
                  child: RichText(
                      text: TextSpan(children: [
                    TextSpan(
                        text: "Already have an Account? ",
                        style: TextStyle(
                            color: MyTools.myColor[6].withOpacity(0.85),
                            fontFamily: "Varelar",
                            fontSize: 16)),
                    TextSpan(
                        text: "Login Here",
                        style: TextStyle(
                            color: MyTools.myColor[6],
                            fontFamily: "Varelar",
                            fontSize: 16,
                            fontWeight: FontWeight.w900))
                  ])),
                  onPressed: () {
                    Navigator.pop(context);
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
