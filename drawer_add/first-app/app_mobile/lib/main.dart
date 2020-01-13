import 'package:flutter/material.dart';

void main() => runApp(Demo());
class Demo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp( 
      debugShowCheckedModeBanner: false,
      home: Scaffold( 
        appBar: AppBar( 
          leading: IconButton( 
            onPressed: () {},
            icon: Icon(Icons.menu),
          ),
          actions: <Widget>[
            Image.network(
              "https://www.freepnglogos.com/uploads/nature-png/natural-health-logos-32.png"
            )
          ],
          title: Text("The world"),
          elevation: 20.0,
        ), 
        body: Stack( 
          children: <Widget>[
            Image.network(
              "https://img.etimg.com/thumb/msid-68721417,width-643,imgsize-1016106,resizemode-4/nature1_gettyimages.jpg",
              fit: BoxFit.cover,
              height: double.infinity,
            ),
            Center( 
              child: Text("Hello my world",
                style: TextStyle(
                  fontSize: 30.0,
                  color: Colors.red,
                ),
              ), 
            )
          ],
        ),
        floatingActionButton: FloatingActionButton( 
          onPressed: () {},
          child: IconButton( 
            onPressed: () {},
            icon: Icon(Icons.favorite),
            color: Colors.red,
          ),
        ),
        bottomNavigationBar: BottomAppBar( 
          child: Container( 

            color: Colors.blue[500],
            child: Row( 
              mainAxisAlignment:MainAxisAlignment.spaceAround ,
              children: <Widget>[
                IconButton( 
                  onPressed: () {},
                  icon: Icon(Icons.message),
                  color: Colors.pink,
                ),
                IconButton( 
                  onPressed: () {},
                  icon: Icon(Icons.phone),
                  color: Colors.pink,
                ),
                IconButton( 
                  onPressed: () {},
                  icon: Icon(Icons.call_missed_outgoing),
                  color: Colors.pink,
                ),
                IconButton( 
                  onPressed: () {},
                  icon: Icon(Icons.calendar_today),
                  color: Colors.pink,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}