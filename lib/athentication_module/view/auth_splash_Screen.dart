import 'dart:async';
import 'package:flutter/material.dart';
import '../model/auth_getstarted_page.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => auth_getstarted())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(48, 33, 45, 1),
      body: Container(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(40.0),
            child: Image(
              image: AssetImage("assets/splash_logo.png"),
            ),
          ),
        ),
      ),
      bottomNavigationBar: SizedBox(
          height: 50,
          width: MediaQuery.of(context).size.width,
          child: Center(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "A Product of",
                style: TextStyle(color: Colors.white),
              ),
              Text(
                " Built In Soft",
                style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              )
            ],
          ))),
    );
  }
}
