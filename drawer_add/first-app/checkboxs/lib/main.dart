// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';

// void main() => runApp(Demo());
// class Demo extends StatefulWidget {
//   @override
//   _DemoState createState() => _DemoState();
// }

// class _DemoState extends State<Demo> {
//   Map <String, bool> vegetables = {
//     'apple': false,
//     'orange' :false,
//     'banana':false,
//     'sary':false,
//   };
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold( 
//         appBar: AppBar( 
//           title: Text("Check box"),
//         ),
//         body: ListView(
//           children: vegetables.keys.map((String key){
//             return Card( 
//               child: CheckboxListTile( 
//                 title: Text(key),
//                 value: vegetables[key],
//                 checkColor: Colors.pink,
//                 onChanged: (bool vegetable){
//                   // setState(() {
//                   //     vegetables[key] = vegetable; 
//                   // });
//                 },
//               ),
//             );
//           }).toList(),
//          ),
        
//       ),
//     );
//   }
// }


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/////////////////
void main() => runApp(Demo());
class Demo extends StatefulWidget {
  @override
  _DemoState createState() => _DemoState();
}

class _DemoState extends State<Demo> {
  Map <String, bool> foods = {
    'I like ':false,
    'I love ':false,
    'I want': false,
  };
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold( 
        appBar: AppBar(
          title: Text("Chaeck box"),
        ),
        body: ListView( 
          children: foods.keys.map((String food){
           return Card(
             child: CheckboxListTile( 
               title: Text("Hello"),
               value: foods[food],
               onChanged: (bool like){
                 setState(() {
                     foods[food] = like;
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