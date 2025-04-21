import 'package:flutter/material.dart';
class Selectedtheme extends StatelessWidget {
  String selectedtheme;
   Selectedtheme({required this.selectedtheme});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("$selectedtheme",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Theme.of(context).colorScheme.onPrimaryContainer),),
        Icon(Icons.check,color: Theme.of(context).colorScheme.onPrimaryContainer,),

      ],
    );
  }
}
