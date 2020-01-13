
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(CheckBoxList());
class CheckBoxList extends StatefulWidget {
  @override
  _CheckBoxListState createState() => _CheckBoxListState();
}

class _CheckBoxListState extends State<CheckBoxList> {
  Map <String, bool> values = {
    'I like vegetable': false,
    'I like fruit': false,
    'I like fish': false,
    'I like food': false,
  };
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold( 
        appBar: AppBar( 
          title: Text("Demo checkbox"),
          centerTitle: true,
        ),
        body: ListView( 
          children: values.keys.map((String key){
               return Card( 
                 child: CheckboxListTile(
                   activeColor: Colors.pink,
                   checkColor: Colors.yellow,
                   secondary: Icon(Icons.edit,size: 40.0,),
                   title: Text(key),
                   value: values[key],
                   onChanged: (bool value){
                     setState(() {
                       values[key] = value;
                     });
                   },
                 ),
               );
          }).toList(),  
        ),
      ),
    );
  }
}