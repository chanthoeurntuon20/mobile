import 'package:flutter/material.dart';
import 'package:mix_mobile/screens/About.dart';

class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return DefaultTabController( 
      length: 4,
      child: Scaffold( 
      appBar: AppBar( 
        iconTheme: IconThemeData(color: Colors.pink),
        title: Text("Home page",style: TextStyle(fontFamily: "newFont",fontSize: 30.0),),
        centerTitle: true,
        actions: <Widget>[
          Image.asset("images/5.jpg"),
        ],
        bottom: TabBar( 
          tabs: <Widget>[
            Tab(child: Icon(Icons.home),),
            Tab(child: Icon(Icons.email),),
            Tab(child: Icon(Icons.phone),),
            Tab(child: Icon(Icons.warning),),
          ],
        ),
      ),
      body: Container( 
        margin: EdgeInsets.only(top: 20.0),
        child: ListView(
          children: <Widget>[
            Image.asset("images/3.jpg"),
            Container( 
              child: Column( 
                children: <Widget>[
                  Image.asset("images/4.jpg"),
                  Image.asset("images/3.jpg"),
                ],
              ),
            )
          ],
        ),
      ),
      drawer: Drawer( 
        child: ListView(
          children: <Widget>[
            DrawerHeader( 
              child: Center( 
                child: CircleAvatar( 
                  backgroundImage: AssetImage("images/1.jpg"),
                  radius: 50.0,
                ),
              ),
            decoration: BoxDecoration( 
              image: DecorationImage( 
                image: AssetImage("images/2.jpg"),
                fit: BoxFit.cover
              ),
            ),
            ),
          ],
         ),
      ),
      floatingActionButton: FloatingActionButton( 
        onPressed: () {
          Navigator.push(context,
          MaterialPageRoute(builder: (context) => About()),
          );
        },
          child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    )
    );
  }
}
