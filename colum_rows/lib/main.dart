import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

void main() => runApp(Demo());
class Demo extends StatefulWidget {
  
  @override
  _DemoState createState() => _DemoState();
}

class _DemoState extends State<Demo> {
  Container imageTest(String img1, String img2){
      return  Container( 
                 margin: EdgeInsets.only(top: 10.0),
               child: Row( 
                 mainAxisAlignment: MainAxisAlignment.spaceAround,
                 children: <Widget>[
                   Image.network(img1,fit: BoxFit.cover,width: 200.0,),
                   Image.network(img2,fit: BoxFit.cover,width: 200.0,),
                 ],
               ),
         );
  }
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController( 
        length: 4,
        child: Scaffold( 
        appBar: AppBar(
          backgroundColor: Colors.pink[200],
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.only(right: 30.0),
              child: Icon(Icons.shopping_cart),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: Icon(Icons.search),
            ),
          ],
          title: Text("My Cady Shop",style: TextStyle(fontFamily:'shop'),),
          centerTitle: true,
          bottom: TabBar( 
            tabs: <Widget>[
              Tab(child: Icon(Icons.call_to_action),),
              Tab(child: Icon(Icons.camera),),
              Tab(child: Icon(Icons.dashboard),),
              Tab(child: Icon(Icons.keyboard),),
            ],
          ),
         ),
         body: ListView( 
           children: <Widget>[
             Image.network("https://i.ytimg.com/vi/3ornkuSM0Ws/maxresdefault.jpg"),
            imageTest("https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSqjBaSwjit_aaJmRXgwENp6dDpmcNHAbNemCV8ejm_wqX6-xV6",
             "https://s-media-cache-ak0.pinimg.com/736x/33/45/9e/33459e54769cdf0a649e634a35e46e5d.jpg"),
             
            imageTest("https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSqjBaSwjit_aaJmRXgwENp6dDpmcNHAbNemCV8ejm_wqX6-xV6",
             "https://s-media-cache-ak0.pinimg.com/736x/33/45/9e/33459e54769cdf0a649e634a35e46e5d.jpg"),
           ],
         ),
         drawer: Drawer( 
           child: ListView( 
             children: <Widget>[
               DrawerHeader( 
                 child: Container( 
                   child: Center( 
                     child: CircleAvatar( 
                     backgroundImage: NetworkImage("https://1.bp.blogspot.com/-0rAWHlep_PM/VkBpzfMie4I/AAAAAAAAAYY/H6pBkc2ss00/s1600/mario%2B.jpg"),
                     radius: 50.0,
                   ),
                 ),
                 ),
                  decoration: BoxDecoration( 
                   image: DecorationImage(image: NetworkImage("http://img.saostar.vn/2016/03/08/330775/push5.jpg"),
                   fit: BoxFit.cover,
                   )
                 ),
               ),
               ListTile(
                leading: Icon(Icons.phone),
                title: Text("096 768 888"),
                subtitle: Text("Smart"),
               ),
               ListTile(
                leading: Icon(Icons.email),
                title: Text("Chanthoeurn@gmail.com"),
                subtitle: Text("Google Mail"),
               ),
             ],
           ),
         ),
         floatingActionButton: SpeedDial( 
           animatedIcon: AnimatedIcons.menu_close,
           overlayOpacity: 0.2,
           overlayColor: Colors.pink,
           children: [
             SpeedDialChild( 
               child: Icon(Icons.email),
               backgroundColor: Colors.blue,
               label: "Email",
               labelBackgroundColor:Colors.blue ,
               labelStyle: TextStyle(color: Colors.white)
             ),
             SpeedDialChild( 
               child: Icon(Icons.email),
               backgroundColor: Colors.blue,
               label: "Email",
               labelBackgroundColor:Colors.blue ,
               labelStyle: TextStyle(color: Colors.white)
             ),
           ],
         ),
         bottomNavigationBar: BottomAppBar( 
           color: Colors.red,
           child: Container( 
             child: Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: <Widget>[
                 IconButton(
                   onPressed: (){},
                   icon: Icon(Icons.phone),
                 ),
                 IconButton(
                   onPressed: (){},
                   icon: Icon(Icons.email),
                 ),
                 IconButton(
                   onPressed: (){},
                   icon: Icon(Icons.share),
                 ),
                 IconButton(
                   onPressed: (){},
                   icon: Icon(Icons.message),
                 ),
               ],
              ),
           ),
         ),
      ),
      )
    );
  }
}