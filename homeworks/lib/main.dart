import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(Homework4());
class Homework4 extends StatefulWidget {
  @override
  _Homework4State createState() => _Homework4State();
}

class _Homework4State extends State<Homework4>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold( 
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.yellow[800]),
         title: Text("Google Database",
         style: TextStyle(color: Colors.black,fontSize: 16.0),
         ),
         backgroundColor: Colors.white,
         centerTitle: true,
          actions: <Widget>[(
            Container(
              margin: EdgeInsets.only(right: 16.0),
              child: Image.network("https://miro.medium.com/max/300/1*R4c8lHBHuH5qyqOtZb3h-w.png"),  
            )
          )],
        ),
        body: ListView( 
          children: <Widget>[
             Image.network("https://i.ytimg.com/vi/if2rysg7P5M/hqdefault.jpg",
               fit: BoxFit.cover, 
          ),
            Container( 
              child: Row( 
                children: <Widget>[
                  Text("Our Wedding Days"),
                  Text("Enjoy good life"),
                  Icon(Icons.favorite,color: Colors.pink, ),
                  Text("Long Love"),
                  Icon(Icons.favorite_border,color: Colors.pink,),
                  Icon(Icons.favorite_border,color: Colors.pink,),
                  Icon(Icons.favorite_border,color: Colors.pink,),
                ],
              ),
            ),
            Container( 
             child: Row( 
               children: <Widget>[
                  Image.network("https://qph.fs.quoracdn.net/main-qimg-3021a457291172f1d0ba8fd378f1c7f4.webp",
                  fit: BoxFit.cover,
                  width: 50,
                  )
               ],
             ),
            )
          ],
        ), 
        drawer: Drawer(
          child: ListView( 
            children: <Widget>[
              DrawerHeader(
                child: Center(
                  child: CircleAvatar(
                    backgroundImage: NetworkImage('https://images.pexels.com/photos/1391499/pexels-photo-1391499.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500'
                    ),
                    radius: 50,
                  ),
                ),
                decoration: BoxDecoration( 
                  image: DecorationImage(
                    image: NetworkImage("https://cf.shopee.ph/file/6dc962337307b35ebc8f08477776bd8d_tn",
                    ),
                    fit: BoxFit.cover
                  )
                ),
              ),
             ListTile(
               leading: Icon(Icons.phone),
               title: Text("08888 88 88"),
             ),
             ListTile( 
               leading: Icon(Icons.email),
               title: Text("bopha@gmail.com"),
             ),
            ],
          ),
        ),
      ),
    );
  }
}