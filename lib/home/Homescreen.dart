import 'package:flutter/material.dart';
import 'package:islamii/home/pages/ahadeth.dart';
import 'package:islamii/home/pages/moshaf.dart';
import 'package:islamii/home/pages/radio.dart';
import 'package:islamii/home/pages/sebha.dart';
class Homescreen extends StatefulWidget{
  static const String routename = "home";

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  int selected_index=0;
  List<Widget> pages=[
    radio(),
    sebha(),
    ahadeth(),
    moshaf()
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/images/background.png"),
        fit:  BoxFit.fill)
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text("اسلامي"),
        ),
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: selected_index,
          onTap: (index){
              setState(() {
                selected_index=index;
              });
          },
          items: [
            BottomNavigationBarItem(
                backgroundColor: Theme.of(context).colorScheme.primary,
                icon: ImageIcon(AssetImage("assets/images/radio_icon.png")),
                label: "الراديو"),
            BottomNavigationBarItem(
                backgroundColor: Theme.of(context).colorScheme.primary,
                icon: ImageIcon(AssetImage("assets/images/sebha_icon.png")),
                label: "التسبيح"),
            BottomNavigationBarItem(
                backgroundColor: Theme.of(context).colorScheme.primary,
                icon: ImageIcon(AssetImage("assets/images/ahadeth_icon.png")),
                label: "الأحاديث"),
            BottomNavigationBarItem(
           backgroundColor: Theme.of(context).colorScheme.primary,
             icon: ImageIcon(AssetImage("assets/images/moshaf_blue.png")),
         label: "القرآن"),
        ],),
        body: pages[selected_index],
      ),
    );
  }
}