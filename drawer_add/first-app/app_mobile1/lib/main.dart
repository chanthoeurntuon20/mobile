import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(Write());
class Write extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController( 
        length: 4,
        child: Scaffold( 
          appBar: AppBar( 
          title: Text("Mobile Moring"),
          elevation: 30.0,
          leading: IconButton( 
            onPressed: () {},
            icon: Icon(Icons.menu),
          ),
          bottom: TabBar( 
            tabs: <Widget>[
              Tab(icon: Icon(Icons.menu),),
              Tab(icon: Icon(Icons.search),),
              Tab(icon: Icon(Icons.email),),
              Tab(icon: Icon(Icons.phone),)
            ],
          ),
        ),

        body: TabBarView( 
          children: <Widget>[
            Stack( 
          children: <Widget>[
             Image.network( 
              "https://data.whicdn.com/images/282314502/superthumb.jpg?t=1490388055",
              fit: BoxFit.cover,
              height: double.infinity,
            ),
            Center(   
              child: Text("Where are you now ?",
              style: TextStyle(color: Colors.red,
              fontSize: 30.0,
              ),
              ),
            )
          ],
        ),
        Stack( 
          children: <Widget>[
             Image.network( 
              "https://data.whicdn.com/images/245087018/large.jpg",
              fit: BoxFit.cover,
              height: double.infinity,
              width: double.infinity,
            ),
            Center(   
              child: Text("My love uuti ?",
              style: TextStyle(color: Colors.red,
              fontSize: 30.0,
              ),
              ),
            )
          ],
        ),
        Stack( 
          children: <Widget>[
             Image.network( 
              "https://i.pinimg.com/originals/20/ee/92/20ee928475e99d4bbe5a9cc6d167aadd.jpg",
              fit: BoxFit.cover,
              height: double.infinity,
            ),
            Center(   
              child: Text("My love lila ?",
              style: TextStyle(color: Colors.red,
              fontSize: 30.0,
              ),
              ),
            )
          ],
        ),
        Stack( 
          children: <Widget>[
             Image.network( 
              "https://i.pinimg.com/originals/e0/a0/3e/e0a03e4e61ba173ab05c96094c3957ba.jpg",
              fit: BoxFit.cover,
              height: double.infinity,
            ),
            Center(   
              child: Text("My love nyna ?",
              style: TextStyle(color: Colors.red,
              fontSize: 30.0,
              ),
              ),
            )
          ],
        ),
          ],
        ),
        bottomNavigationBar: BottomAppBar( 
          child: Container( 
            color: Colors.pink[100],
            child: Row( 
              children: <Widget>[
                IconButton( 
                  icon: Icon(Icons.calendar_today),
                  onPressed: () {},
                ),
                IconButton( 
                  icon: Icon(Icons.edit),
                  onPressed: () {},
                ),
                IconButton( 
                  icon: Icon(Icons.watch),
                  onPressed: () {},
                ),
                IconButton( 
                  icon: Icon(Icons.radio),
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ),
        ),
      ),
    );
     
}
}