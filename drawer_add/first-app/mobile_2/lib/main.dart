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
              "https://library.kissclipart.com/20180922/zke/kissclipart-rotten-food-on-transparent-background-clipart-appl-02504b6d432169ab.jpg",
            ),
         IconButton( 
           icon: Icon(Icons.add),
           onPressed: () {},
         )
          ],
          elevation: 30.0,
          title: Text("Real Madrid",
            style: TextStyle(
              color: Colors.red
            ),
          ),
          
        ),
      ),
    );
  }
}