import 'package:flutter/material.dart';

void main() => runApp(Demo());
class Demo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp( 
      debugShowCheckedModeBanner: false,
      home: Scaffold( 
        appBar: AppBar( 
          backgroundColor: Colors.pink[900],
          leading: IconButton( 
            onPressed: () {},
            icon: Icon(Icons.menu),
          ),
          actions: <Widget>[
            Image.network( 
              "https://png.pngtree.com/element_pic/17/02/19/4e10739872e26990dfa2dc99a7f106d3.jpg"    
            ), 
            IconButton( 
              onPressed: () {},
              icon: Icon(Icons.add),
              color: Colors.pink[900],
            )
          ],  
          title: Text("Tablate"),
        ),
        body: Container( 
          child: Image.network( 
            "http://images.france.fr/zeaejvyq9bhj/4VGVbWT4kwsIyqaIuyiYs2/69b40a00fddb2b2c26ebd472fa6e4186/nature_dordogne.jpg?w=1200&h=630&q=70&fl=progressive&fit=fill",
            fit: BoxFit.cover,
            height: double.infinity,
          ),
        ),
        floatingActionButton: FloatingActionButton( 
          onPressed: () {},
          child: Icon(Icons.favorite),
          backgroundColor: Colors.orange,
        ),
        bottomNavigationBar: BottomAppBar( 
          child: Container( 
            color: Colors.white,
           child: Row( 
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: <Widget>[
               IconButton( 
                 onPressed: () {},
                 icon: Icon(Icons.phone),
                 color: Colors.pink[800],
               ),
               IconButton( 
                 onPressed: () {},
                 icon: Icon(Icons.people),
                 color: Colors.red[900],
               ),
               IconButton( 
                 onPressed: () {},
                 icon: Icon(Icons.home),
                 color: Colors.teal,
               ),
               IconButton( 
                 onPressed: () {},
                 icon: Icon(Icons.search),
               )
             ],
           ),
          ),
        ),
      ),
    );
  }
}
 