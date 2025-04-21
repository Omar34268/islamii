import 'package:flutter/material.dart';
class Unselected extends StatelessWidget {
  String unselected;
   Unselected({required this.unselected});

  @override
  Widget build(BuildContext context) {
    return  Text("$unselected",style: TextStyle(fontSize: 25),);
  }
}
