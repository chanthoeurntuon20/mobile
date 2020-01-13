import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(Demo());
class Demo extends StatefulWidget {
  @override
  _DemoState createState() => _DemoState();
}

class _DemoState extends State<Demo> {
  bool _isCheck = false;
  Color _color;
  Image _image;
  String _text = "";

  var url = "";
  void condition(bool value){
     setState(() {
       _isCheck = value;
      if(_isCheck){
         _text = "Check";
        _color = Colors.pink;
        url = "https://img1.exportersindia.com/product_images/bc-full/2019/2/5634351/fresh-orange-1551335779-4755905.jpeg";
      }else{
        _color = Colors.blue;
          _text = "Uncheck";
      url = "https://ecipek.com/wp-content/uploads/2019/01/apple-fruit.jpg";       
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
          title: Text("Checkbok"),
        ),
        body: Center( 
          child: Column(   
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
          Container( 
            child:  CircleAvatar(
             backgroundImage: NetworkImage(url),radius: 50.0,
           ),   
          ),
            Row( 
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Checkbox( 
              value: _isCheck,
              onChanged: condition,
            ),
             Text("You are okay?"),
              ], 
            ),
             Text(_text,style:TextStyle(fontSize: 20.0,color: Colors.pink),)
          ],
        ),
        )
        
      ),
    );
  }
}