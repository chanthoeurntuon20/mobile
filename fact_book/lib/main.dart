import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

void main() => runApp(FakeBook());
class FakeBook extends StatefulWidget {
 
  @override
  _FakeBookState createState() => _FakeBookState();
}

class _FakeBookState extends State<FakeBook> {
  Map users;
  List userData;

   Future getUser() async { 
    http.Response response = await http.get("https://reqres.in/api/users");
    //instrac code conver to json (array to object)
    users = json.decode(response.body);
    setState(() {
      userData = users['data'];
    });
    //test in console get data from server or not
    // debugPrint(response.body);
    
    //debugPrint(userData.toString());
  }
  @override
  void initState() {
   
    super.initState();
    getUser();
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold( 
        appBar: AppBar(
          backgroundColor: Colors.pink[200],
          title: Text("Fake Book",style: TextStyle(color: Colors.white),),
        ),
        body: ListView.builder(
          itemCount: userData == null ? 0 : userData.length,
          itemBuilder: (BuildContext context, int index){ 
            return Card( 
              child: Column( 
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    /// click on CircleAvatar then Ctrl + .
                    // child: CircleAvatar( 
                    //   backgroundImage: NetworkImage(userData[index]['avatar']),
                    //   maxRadius: 40.0,
                    // ),
                      child: Image.network(userData[index]['avatar'],
                      fit: BoxFit.cover,
                      height: 400.0,
                      width: 400.0,
                      ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    // child: Text("${userData[index]['first_name']},${userData[index]['last_name']}",
                    //   style: TextStyle(
                    //     fontSize: 20.0,
                    //     color: Colors.pink,
                    //     fontWeight: FontWeight.w400
                    //   ),
                    // ),
                     child:Row( 
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: <Widget>[
                         CircleAvatar( 
                           backgroundImage: NetworkImage(userData[index]['avatar']),
                         ),
                        
                          Text("${userData[index]['first_name']},${userData[index]['last_name']}",
                           style: TextStyle(
                           fontSize: 20.0,
                           color: Colors.pink,
                           fontWeight: FontWeight.w400
                      ),
                    ),
                         IconButton( 
                           onPressed: () {},
                           icon: Icon(Icons.thumb_up,size: 30.0,color: Colors.blue,),
                         ),
                         IconButton( 
                           onPressed: () {},
                           icon: Icon(Icons.thumb_down,size: 30.0,color: Colors.blue,),
                         ),
                         IconButton( 
                           onPressed: () {},
                           icon: Icon(Icons.comment,size: 30.0,color: Colors.pink,),
                         ),
                       ],
                     )
                  ),
                ],
              ),
            );
          }
        ),
        bottomNavigationBar: BottomAppBar( 
          child: Container( 
            child: Row( 
              children: <Widget>[
                Icon(Icons.favorite)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
