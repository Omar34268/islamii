import 'package:flutter/material.dart';
class Unselectedtheme extends StatelessWidget {
  String unselectedtheme;
  Unselectedtheme({required this.unselectedtheme});

  @override
  Widget build(BuildContext context) {
    return Text("$unselectedtheme",style: TextStyle(fontSize: 25),);
  }
}
