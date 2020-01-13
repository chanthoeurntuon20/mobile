import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mix_mobile/screens/Home.dart';

void main() => runApp(Mix());
class Mix extends StatefulWidget {
  @override
  _MixState createState() => _MixState();
}

class _MixState extends State<Mix> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}