
import 'package:flutter/material.dart';

void main()  { runApp(
 MaterialApp( 
   debugShowCheckedModeBanner: false,
   home: Scaffold( 
     backgroundColor: Colors.blueGrey,
    appBar: AppBar(
     title: Text("I am rich"),
     backgroundColor: Colors.blueGrey[900],
   ),
  body: Center( 
    // child: Image.network( 
    //   "https://picsum.photos/200"
    // ),
    child: Image(image: AssetImage('image/1.png',)) ,
  ),
  ),
),
);
}