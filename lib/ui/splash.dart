import 'package:flutter/material.dart';
import 'package:safety/pages/login_page.dart';
import 'dart:async';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:avatar_glow/avatar_glow.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (BuildContext context) => LoginPage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 75.0),
              child: AvatarGlow(
                endRadius: 200.0,
                glowColor: HexColor("#ea6a88"),
                child: Container(
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(1000)),
                  child: new Image(
                      width: 251.0, //250
                      height: 191.0,
                      fit: BoxFit.fill,
                      image: new AssetImage('assets/SheHeroes.png')),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 0, 0, 30),
              child: Text(
                'SheHeroes',
                style: TextStyle(
                    fontSize: 30.0,
                    fontFamily: "Canterbury",
                    color: HexColor("#ea6a88"),
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.start,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
