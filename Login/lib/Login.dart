import 'package:flutter/material.dart';
import 'SecondPage.dart';
class LoginDemo extends StatefulWidget {
  const LoginDemo({Key? key}) : super(key: key);
  @override
  State<LoginDemo> createState() => _LoginDemoState();
}
class _LoginDemoState extends State<LoginDemo> {

  TextEditingController controller1 =  new TextEditingController();
  TextEditingController controller2 =  new TextEditingController();
  String uid= "kk";
  String pwd = "kk";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Login Page", style: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold,
        ),),
      ),
      body: Column(//3
        children: [
          Center(
            child: Container(//2
              height: 150,
              width: 190,
              padding: EdgeInsets.only(
                top: 50,),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(200),
              ),
              child: Center( //1
                  child: Image.asset('assets/images/flutter.png')),
            ),
          ),
          Padding( padding: //4
          EdgeInsets.all(10),
            child: TextField( //5
              controller: controller1,
              decoration: InputDecoration( //6
                icon: Icon(Icons.perm_identity),
                  border: OutlineInputBorder(),//7
                  labelText: 'User ID',//8
                  hintText: 'Enter Valid Usr ID'//9
              ),
            ),
          ),
          Padding( padding: //4
          EdgeInsets.all(10),
            child: TextField( //5
              controller: controller2,
              decoration: InputDecoration(
                  icon: Icon(Icons.password),//6
                  border: OutlineInputBorder(),//7
                  labelText: 'Password', //8
                  hintText: 'Enter Valid Password'//9
              ),
            ),
          ),
          SizedBox(height: 15),
          ElevatedButton(onPressed: (){
              if(uid == controller1.text.toString() && pwd == controller2.text.toString() ){
                Navigator.push(context, //9
                    MaterialPageRoute(builder: (context)=> SecondPage(controller1.text.toString()),));
              }
              else
                {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: new Text("Alert!!"),
                        content: new Text("Invalid UerID"),
                        actions: <Widget>[
                          ElevatedButton(
                            child: new Text("OK"),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
                        ],
                      );
                    },
                  );
                }
            },
            child: Text("Login",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              ),
            ),
          )
        ],
      ),
    );
  }
}