import 'dart:async';
import 'package:flutter/material.dart';
import 'package:kklogin/Login.dart';
class SplashScreen extends StatefulWidget{
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}
class _SplashScreenState extends State<SplashScreen> {
  //6 create initState() as below: write init
  @override
  void initState() {
    super.initState();
    // Callback function
    Timer(Duration(seconds: 5), (){ //7
      Navigator.pushReplacement(c
          ontext, //8
          MaterialPageRoute(builder: (context)=> LoginDemo(),)); //9
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container( //1
        color: Colors.lightBlue,//2
        // 3 go to main.dart and change the home: SplashScreen()
        child: Center(
          child: Image.asset('assets/images/flutter.png'),
        ),
      ),
    );
  }
}