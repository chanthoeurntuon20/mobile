import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(Demo());

class Demo extends StatefulWidget {
  @override
  _DemoState createState() => _DemoState();
}

class _DemoState extends State<Demo> {
  int _increment = 0;
  Color _color;
  void add(){
    setState(() {
     _increment++; 
    switch(_increment){
      case 5:
      _color = Colors.pink;
        break;
      case 10:
      _color = Colors.green;
      break;
      case 15:
      _color = Colors.yellow;
      break;
      case 20:
      _color = Colors.red;
      break;

    }
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold( 
        appBar: AppBar(
          backgroundColor: _color,
          title: Text("Welcome my parent"),
          centerTitle: true,
        ),
        body: Center(
          child: Text("${_increment} ",style: TextStyle(fontSize: 50.0,color: _color),),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: _color,
          onPressed: () => add(),
          child: Icon(Icons.add),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat
      ),
    );
  }
}