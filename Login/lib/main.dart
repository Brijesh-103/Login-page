import 'package:flutter/material.dart';
import 'package:kklogin/Login.dart';
import 'package:kklogin/splashscreen.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Navigation Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //home: FirstPage(),// Change this to Splash Screen
      home: SplashScreen(),
    );
  }
}

