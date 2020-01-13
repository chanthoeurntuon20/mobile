import 'package:flutter/material.dart';
import 'package:mix_mobile/screens/Home.dart';

class About extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      appBar: AppBar( 
        title: Text("Home page",style: TextStyle(fontFamily: "newFont",fontSize: 30.0),),
        centerTitle: true,
      ),
      body: Container(
        child: ListView(
          children: <Widget>[
            Image.asset("images/1.jpg"),
            Container( 
              margin: EdgeInsets.symmetric(vertical: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Image.asset("images/2.jpg",fit: BoxFit.cover,width: 200.0,),
                  Image.asset("images/3.jpg",fit: BoxFit.cover,width: 200.0,),
                ],
              ),
            ),
            Container( 
              child: Row( 
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                 Row( 
                   children: <Widget>[
                      Icon(Icons.favorite_border,size: 30.0,),
                      Icon(Icons.favorite_border,size: 20.0,),
                      Icon(Icons.favorite_border,size: 10.0,),
                   ],
                 ),
                 Row( 
                   children: <Widget>[
                      Icon(Icons.favorite_border,size: 30.0,),
                      Icon(Icons.favorite_border,size: 20.0,),
                      Icon(Icons.favorite_border,size: 10.0,),
                   ],
                 ),
                ],
              ),
            ),
            Container(
            height: 50.0,
            margin: EdgeInsets.only(left: 20.0,right: 20.0),
              child: RaisedButton( 
                color: Colors.purple,
                onPressed: (){},
                child: Text("Show me",style: TextStyle(color: Colors.white),),
                shape: RoundedRectangleBorder( 
                  borderRadius: BorderRadius.circular(50.0)
                ),
              ),
            )
        ],),
      ),
      bottomNavigationBar: BottomAppBar( 
        child: Container( 
          color: Colors.yellow,
          child: Row( 
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.receipt),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.edit),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.power),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.message),
              ),
            ],
          ),
        ),
      ),
    floatingActionButton: FloatingActionButton( 
      onPressed: (){
        Navigator.push(context, 
        MaterialPageRoute(builder: (context) => Home())
        );
      },
      child: Icon(Icons.arrow_back),
    ),
    );
  }
}
