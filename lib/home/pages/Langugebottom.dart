import 'package:flutter/material.dart';
import 'package:islamii/home/pages/unselected.dart';
import 'package:provider/provider.dart';

import '../../provider/settingsprovider.dart';
import 'Selecteditem.dart';
class Langugebottom extends StatelessWidget {
  const Langugebottom({super.key});

  @override
  Widget build(BuildContext context) {
    Settingsprovider settingsprovider =Provider.of<Settingsprovider>(context);
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 15,),
            Selecteditem(selected: settingsprovider.language=="en"?
            "English":"العربيه",),
            SizedBox(height: 20,),
            InkWell( onTap: (){
              settingsprovider.changelanguage(settingsprovider.language=="en"?
              "ar":"en");
            },
                child: Unselected(unselected: settingsprovider.language=="en"?
                "العربيه":
                "English",))
          ],

        ),
      ),
    );
  }
}
