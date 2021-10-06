import 'package:couchlock_flutter/Animation/FadeAnimation.dart';
import 'package:couchlock_flutter/screens/mainScreen.dart';
import 'package:flutter/material.dart';
import 'package:couchlock_flutter/styles/theme.dart' as Style;

class LoginPageScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Style.Colors.titleColor,
      resizeToAvoidBottomPadding: false,
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
          colors: [
                             Style.Colors.mainColor.withOpacity(1.0),
                  Style.Colors.mainColor.withOpacity(0.0)
                ],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                stops: [
                  0.0,
                  0.9
                ])),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 80.0,
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Login',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 40.0,
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    FadeAnimation(1,Text(
                      'Welcome Back',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
                      ),
                    )),
                  ],
                ),
              ),
              SizedBox(height: 20.0),
              Expanded(
                  child: Container(
                decoration: BoxDecoration(
                    color: Style.Colors.mainColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(60),
                      topRight: Radius.circular(60),
                    )),
                child: Padding(
                    padding: EdgeInsets.all(30.0),
                    child: Column(children: <Widget>[
                      SizedBox(height: 60.0),
                      FadeAnimation(1.3,Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Style.Colors.secondColor.withOpacity(0.5),
                                blurRadius: 20.0,
                                offset: Offset(0, 10),
                              )
                            ]),
                        child: Column(children: <Widget>[
                          Container(
                            padding: EdgeInsets.all(10.0),
                            decoration: BoxDecoration(
                                border: Border(
                                    bottom:
                                        BorderSide(color: Colors.grey[200]))),
                            child: TextField(
                              decoration: InputDecoration(
                                  hintText: 'Email or Username',
                                  hintStyle: TextStyle(color: Colors.grey),
                                  border: InputBorder.none),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(10.0),
                            decoration: BoxDecoration(
                                border: Border(
                                    bottom:
                                        BorderSide(color: Colors.grey[200]))),
                            child: TextField(
                              decoration: InputDecoration(
                                  hintText: 'Password',
                                  hintStyle: TextStyle(color: Colors.grey),
                                  border: InputBorder.none),
                            ),
                          ),
                        ]),
                      )),
                      SizedBox(
                        height: 40.0,
                      ),
                      FadeAnimation(1.4,Text(
                        'Forgot Password?',
                        style: TextStyle(color: Colors.grey),
                      )),
                      SizedBox(height: 40.0),
                      FadeAnimation(1.5,Container(
                        height: 50.0,
                        margin: EdgeInsets.symmetric(horizontal: 50),
                        decoration: BoxDecoration(
                          color: Style.Colors.secondColor,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: GestureDetector(
                          onTap:(){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => MainPageScreen()));
                          } ,
                                                  child: Center(

                            child: Text(
                              'Login',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      )),
                      SizedBox(height: 80.0,),
                    ])),
              ))
            ]),
      ),
    );
  }
}
