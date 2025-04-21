import 'package:flutter/material.dart';
class Selecteditem extends StatelessWidget {
  String selected;
 Selecteditem({required this.selected});

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("$selected",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Theme.of(context).colorScheme.onPrimaryContainer),),
        Icon(Icons.check,color: Theme.of(context).colorScheme.onPrimaryContainer,),

      ],
    );
  }
}
