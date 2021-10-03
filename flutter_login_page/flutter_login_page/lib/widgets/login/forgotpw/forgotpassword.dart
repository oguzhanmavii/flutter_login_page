import 'package:flutter/material.dart';
import 'package:login_viaspa/tools.dart';

class ForgotPass extends StatefulWidget {
  @override
  _ForgotPassState createState() => _ForgotPassState();
}

class _ForgotPassState extends State<ForgotPass> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
        backgroundColor: MyTools.myColor[0],
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(40.000)),
        insetPadding: EdgeInsets.symmetric(
            horizontal: MyTools.responsiveWidth(0.05, context)),
        title: Container(
          width: MyTools.responsiveWidth(0.95, context),
          height: MyTools.reponsiveHeight(0.3, context),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  alignment: Alignment.center,
                  height: MyTools.reponsiveHeight(0.05, context),
                  margin: EdgeInsets.only(
                      bottom: MyTools.reponsiveHeight(0.02, context)),
                  child: Text("Password Recovery",
                      style: TextStyle(
                          fontFamily: "Vareler",
                          color: MyTools.myColor[6],
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          letterSpacing: 1))),
              Container(
                height: MyTools.reponsiveHeight(0.1, context),
                child: TextFormField(
                  cursorColor: Colors.amberAccent,
                  decoration: InputDecoration(
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
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(color: MyTools.myColor[4]),
                    ),
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
                  onChanged: (s) {},
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                    top: MyTools.reponsiveHeight(0.02, context)),
                width: MyTools.responsiveWidth(0.9, context),
                height: MyTools.reponsiveHeight(0.07, context),
                child: RaisedButton(
                  onPressed: () {},
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(80.00)),
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
                      borderRadius: BorderRadius.all(Radius.circular(80.000)),
                    ),
                    child: Container(
                      constraints: BoxConstraints(
                          minWidth: 88.00,
                          minHeight: 36.000), //butonlar için minimum boyutlar
                      alignment: Alignment.center,
                      child: Text(
                        'SEND MAİL',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: MyTools.myColor[0],
                            fontFamily: "Varelar",
                            fontSize: 22),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
