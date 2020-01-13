
import 'package:flutter/material.dart';
import 'package:drawer_add/screen/Home.dart';
void main() => runApp(Kamab());
class Kamab extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   
    return MaterialApp( 
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}