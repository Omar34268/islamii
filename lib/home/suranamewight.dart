import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islamii/home/qurandetailscreen.dart';

class suranamewight extends StatelessWidget {
  String suraname;
  String suranumber;
  int index;
   suranamewight({super.key,required this.suraname,required this.suranumber,required this.index});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.pushNamed(context,Qurandetailscreen.routename,arguments: Quranarg(suratitle: suraname, index: index));
      },
      child: Row(
        children: [
          Expanded(child: Text(suraname,textAlign: TextAlign.center,style: TextStyle(fontWeight:FontWeight.bold,fontSize: 25 ),)),
          Container(
            height: 50,
            width: 4,
            decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.onPrimaryContainer
            ),
          ),
          Expanded(child: Text(suranumber,textAlign: TextAlign.center,style: TextStyle(fontWeight:FontWeight.bold,fontSize: 25),)),
        ],
      ),
    );
  }
}
