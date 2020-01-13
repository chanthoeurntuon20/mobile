import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(Demo());

class Demo extends StatefulWidget {
  @override
  _DemoState createState() => _DemoState();
}

class _DemoState extends State<Demo> {
  TextEditingController _textFieldController = TextEditingController();
  String _username = "";
  String _password = "";
  String _message = "";
  bool isCheck = false;
  void condition(bool value){
    setState(() {
      isCheck = value;

    });
  }
  void login() {
    setState(() {
     if(isCheck == true && _username != "" && _password != ""){
       _message = _username + _password;
     }else{
       _message = "You are not yet agree";
     }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Login"),
        ),

        body: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(20.0),
              child: TextField(
                decoration: InputDecoration(
                  icon: Icon(Icons.person,size: 30.0,),
                  hintText: "Username",
                ),
                onChanged: (String text){  
                  _username = text;     
                },
              ),
            ),
            Container(
              padding: EdgeInsets.all(20.0),
              child: TextField(
                controller: _textFieldController,
               obscureText: true,
                decoration: InputDecoration(
                  icon: Icon(Icons.lock,size: 30.0,),
                  hintText: "Password"
                ),
                onChanged:(String text){
                  _password = text;
                },
              ),
            ),
            Container(
             child: Row( 
               mainAxisAlignment: MainAxisAlignment.center,
               children: <Widget>[
                 Checkbox( 
                value: isCheck,
                onChanged: condition,
              ),
              Text("Are yor agree ?"),
               ],
             ),
            ),
            Container(
              padding: EdgeInsets.all(10.0),
              width: 300.0,
              child: RaisedButton(
                color: Colors.blue,
                onPressed: () => login(),
                child: Text("Login",style: TextStyle(color: Colors.white),),
              ),
            ),
            Text(_message),
          ],
        ),
      ),
    );
  }
}
