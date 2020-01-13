import 'package:flutter/material.dart';

class About extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      appBar: AppBar( 
        title: Text("Hello"),
        elevation: 20.0,
      ),
      body: Container(
       child: Image.network(
          "https://data.whicdn.com/images/245087018/large.jpg",
        fit: BoxFit.cover,
        height: double.infinity,
        width: double.infinity,
        ),
      ),
      floatingActionButton: FloatingActionButton( 
        onPressed: () {
          Navigator.pop(context);
        },
        child: Icon(Icons.arrow_back),
      ),
    
    );
  }
}