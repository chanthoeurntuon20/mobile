
import 'package:flutter/material.dart';

void main() => runApp(
  MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      backgroundColor: Colors.teal[800],
      appBar: AppBar(
        title: Text('Learn app'),
      ),
      body: Center(
        child: Image.network(
          "https://thumbs-prod.si-cdn.com/N-_fU5xNOvR2T25teuPAdtGkBhY=/800x600/filters:no_upscale()/https://public-media.si-cdn.com/filer/90/b2/90b2dfe5-a9ab-4821-9ccc-45ae1d52fa8a/blackholewithclouds_c-1-941x519.jpg",
          fit: BoxFit.cover,
          height: double.infinity,
          ),
       
      ),
      bottomNavigationBar: BottomAppBar( 
        color: Colors.teal,
        child: Container( 
          height: 40.0,
          child: Center( 
            child: Text("Lovely Apps", style: TextStyle(fontSize: 17.0, color: Colors.white),) ,
          ),
        ),
      ),
    ),
  ),
);