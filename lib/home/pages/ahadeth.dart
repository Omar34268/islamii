import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'hadeth.dart';
class ahadeth extends StatefulWidget {
  static const String routename = "ahadeth";


  @override
  State<ahadeth> createState() => _ahadethState();
}

class _ahadethState extends State<ahadeth> {
   @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadfile();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image(image: AssetImage("assets/images/ahadeth_image.png")),
          Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("ahadeth",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
          Divider(),
          Expanded(
              child: ListView.separated(itemBuilder: (context, index) =>
                  Text(ahadethlist[index].hadethtitle, textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 30),),
                  separatorBuilder: (context, index) => SizedBox(height: 10,),
                  itemCount: ahadethlist.length))
        ],
      ),
    );
  }

  List<Hadeth> ahadethlist= [];

  loadfile() async {
    String filecontent = await rootBundle.loadString("assets/file/ahadeth.txt");
    List<String> ahadeth = filecontent.split("#");
    for (int i = 0; i < ahadeth.length; i++) {
      List<String> hadethlines = ahadeth[i].trim().split("\n");
      String ahadethheader = hadethlines[0];
      hadethlines.removeAt(0);
      String hadethcontent = hadethlines.join(" ");
      ahadethlist.add(Hadeth(ahadethheader, hadethcontent));
    }
    setState(() {

    });

  }
}
