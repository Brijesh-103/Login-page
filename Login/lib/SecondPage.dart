import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kklogin/Login.dart';
class SecondPage extends StatelessWidget{
  //12
  var namefromhome;
  SecondPage(this.namefromhome);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, //2
      home: Scaffold(
          backgroundColor: Colors.blueGrey,//3
          appBar: AppBar(
            title: Text("Second Page"),
          ),
          body: Center(//7
            child: Column( //4
              mainAxisAlignment: MainAxisAlignment.center, //6
              children: [ //5
                Column( //10 wrapping Elevated button to column
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    //11
                    Text("Welcome : $namefromhome" ,
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight:FontWeight.bold,
                      ),),
                    //13
                  ],
                ),
              ],
            ),
          )
      ),
    );
  }
}