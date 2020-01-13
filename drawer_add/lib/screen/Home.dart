
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:drawer_add/screen/About.dart';
class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold( 
        appBar: AppBar( 
          title: Text('Drawer app'),
        ),
        drawer: Drawer(
          child: ListView( 
            children: <Widget>[
              DrawerHeader( 
                child: Text("My app",style: TextStyle(
                  color: Colors.white,fontSize: 30.0),
                  ),
                ///good style
                decoration: BoxDecoration( 
                  color: Colors.blue[200]
                ),
              ),
              ListTile( 
                title: Text("Home"),
                leading: Icon(Icons.home),
                onTap: () {
                   Navigator.push(context, 
                    MaterialPageRoute(builder: (context) => About())
                  );
                },
              ),
              ListTile( 
                title: Text("email"),
                leading: Icon(Icons.email),
                onTap: () {
                  Navigator.push(context, 
                    MaterialPageRoute(builder: (context) => About())
                  );
                },
              ),
              ListTile( 
                title: Text("phone"),
                leading: Icon(Icons.phone),
                onTap: () {
                   Navigator.push(context, 
                    MaterialPageRoute(builder: (context) => About())
                  );
                },
              ),
            ],
          ),
        ),
      );
  }
}