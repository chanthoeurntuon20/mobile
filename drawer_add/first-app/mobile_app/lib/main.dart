import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text('Where are you now'),
          leading: IconButton(
            icon: Icon(Icons.menu, color: Colors.white,),
            onPressed: () {print("You click me");},
          ),

          actions: <Widget>[
            Image.network("https://www.premierleague.com/resources/prod/f4131f7-1609/i/nike-ball-hub/index/1.png",
             width: 40.0,
            ),
           IconButton(
             icon: Icon(Icons.add),
             onPressed: () {},
             color: Colors.red,
           ),
          ],
        ),
        body: Container(
          // child: Center(
          //   child: Text(
          //     'Why not me',
          //     style: TextStyle(fontSize: 37.5),
          //   ),
          // ),
         child:Image.network(
           'https://img.etimg.com/thumb/msid-68721417,width-643,imgsize-1016106,resizemode-4/nature1_gettyimages.jpg',
           fit: BoxFit.cover,
           height: double.infinity,
         ) ,
        ),
        bottomNavigationBar: BottomAppBar(
          child: Container(
            color: Colors.red[500],
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.home),
                  color:Colors.white,
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.group),
                  color:Colors.white,
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.search),
                  color:Colors.white,
                ),
                IconButton(
                  onPressed: () {print("Where are you now");},
                  icon: Icon(Icons.add),
                  color:Colors.white,
                )
              ],
            ),
          ),
        ),
       
      ),
      
    ));
