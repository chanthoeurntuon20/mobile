import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

void main() => runApp(MobileBtn());
class MobileBtn extends StatefulWidget {
  @override
  _MobileBtnState createState() => _MobileBtnState();
}

class _MobileBtnState extends State<MobileBtn> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(  
        appBar: AppBar(
          backgroundColor: Colors.pink[200],
          title: Text("Floating Button"),
        
        // ),
        // floatingActionButton: FloatingActionButton.extended( 
        //   backgroundColor: Colors.yellow,
        //   onPressed: () {},
        //   icon: Icon(Icons.message),
        //   label: Text("Message"),
        //   shape: RoundedRectangleBorder( 
        //     borderRadius: BorderRadius.all(
        //       Radius.circular(20.0)
        //     )
        //   ),
          // backgroundColor: Colors.pink,
          // onPressed: () {},
          // child: Icon(Icons.add,),
          //mini: true,
          // shape: RoundedRectangleBorder(
          //   borderRadius: BorderRadius.all(Radius.circular(12.0)),
          // ),
        ),



        // floatingActionButton: SpeedDial( 
        //   animatedIcon: AnimatedIcons.menu_close,
        //   overlayColor: Colors.pink,
        //   overlayOpacity: 0.2,
        //   children: [
        //     SpeedDialChild(
        //       child: Icon(Icons.email),
        //       backgroundColor: Colors.pink,
        //       label: "Email",labelBackgroundColor: Colors.purple,
        //         labelStyle: TextStyle(color: Colors.white,fontSize: 20.0)
        //     ),
        //     SpeedDialChild(
        //       child: Icon(Icons.headset),
        //        backgroundColor: Colors.yellow,
        //         label: "Headset",labelBackgroundColor: Colors.yellow,
        //         labelStyle: TextStyle(color: Colors.white,fontSize: 20.0)
        //     ),
        //     SpeedDialChild(
        //       child: Icon(Icons.account_balance),
        //        backgroundColor: Colors.green,
        //         label: "Account",labelBackgroundColor: Colors.teal,
        //         labelStyle: TextStyle(color: Colors.white,fontSize: 20.0)
        //     ),
        //     SpeedDialChild(
        //       child: Icon(Icons.battery_full),
        //        backgroundColor: Colors.teal,
        //         label: "Battery",labelBackgroundColor: Colors.blue,
        //         labelStyle: TextStyle(color: Colors.white,fontSize: 20.0)
        //     ),
        //   ],
        // ),


        // floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
        floatingActionButton: FloatingActionButton( 
          onPressed: () {},
          child: Icon(Icons.email),
          // shape: RoundedRectangleBorder(
          //   borderRadius: BorderRadius.all(Radius.circular(30.0)),

          //  ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

        bottomNavigationBar: BottomAppBar( 
          child: Container( 
            color: Colors.purple,
            height: 60.0,
            child: Row( 
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
               MaterialButton(
                 onPressed: () {},
                 child: Column( 
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: <Widget>[
                     Icon(Icons.home),
                     Text("equalizer"),
                   ],
                 ),
               ),
               MaterialButton(
                 onPressed: () {},
                 child: Column( 
                    mainAxisAlignment: MainAxisAlignment.center,
                   children: <Widget>[
                     Icon(Icons.card_giftcard),
                     Text("equalizer"),
                   ],
                 ),
               ),
               MaterialButton(
                 onPressed: () {
                  //  Navigator.push(context,
                  //   MaterialPageRoute(builder: (context) =>)
                  //  );
                 },
                 child: Column( 
                    mainAxisAlignment: MainAxisAlignment.center,
                   children: <Widget>[
                     Icon(Icons.people),
                     Text("equalizer"),
                   ],
                 ),
               ),
               MaterialButton(
                 onPressed: () {},
                 child: Column( 
                    mainAxisAlignment: MainAxisAlignment.center,
                   children: <Widget>[
                     Icon(Icons.thumb_up),
                     Text("equalizer"),
                   ],
                 ),
               ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
