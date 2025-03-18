import 'package:flutter/material.dart';

class sebha extends StatefulWidget {
  @override
  State<sebha> createState() => _SebhaState();
}

class _SebhaState extends State<sebha> {
  int index = 0;// Start from 0 for better handling
  String text = "سبحان الله";// Initial text
  int counter = 0;
  double rotationAngle = 0;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: InkWell(
              onTap: () {
                setState(() {
                  if (counter >= 120) {
                    counter = 0;
                    index --;
                  } else {
                    counter++;
                  }
                  if (index >= 30) {
                    index = 0;
                    counter --;
                  } else {
                    index++;
                  }
                  rotationAngle += 20;
                  changetext(counter);
                });
              },
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Positioned(
                    child: AnimatedRotation(
                        turns: rotationAngle/360,
                        duration: Duration(milliseconds: 300),
                        child: Image.asset("assets/images/body_of_seb7a.png")),
                  ),
                  Positioned(
                    
                    top: 0.028 * height,
                    left: 0.22  * width,
                    child: Image.asset(
                      "assets/images/head_of_seb7a.png",
                      width: width * 0.25,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 0.02 * height),
          Expanded(
            child: Column(
              children: [
                Text("عدد التسبيحات", style: TextStyle(fontSize: 25)),
                SizedBox(height: 0.02 * height),
                Center(
                  child: Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.secondary,
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      "$index",
                      style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                SizedBox(height: 0.02 * height),
                Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.secondary,
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    text,
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).colorScheme.onPrimary,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void changetext(int indexx) {
    if (indexx <= 30) {
      text = "سبحان الله";
    } else if (indexx <= 60) {
      text = "الحمد لله";
    } else if (indexx <= 90) {
      text = "لا إله إلا الله";
    } else {
      text = "الله أكبر";
    }
  }
}
