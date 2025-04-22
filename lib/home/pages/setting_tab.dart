import 'package:flutter/material.dart';
import 'package:islamii/home/pages/Langugebottom.dart';
import 'package:islamii/provider/settingsprovider.dart';
import 'package:provider/provider.dart';
import 'Themebottom.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
class SettingTab extends StatelessWidget {

  const SettingTab({super.key});
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    Settingsprovider settingsprovider =Provider.of<Settingsprovider>(context);
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
       crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Text("${AppLocalizations.of(context)!.language}:",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold ),),
          GestureDetector(
            onTap: (){
              showModalBottomSheet(context: context, builder:(context) => Langugebottom());
            },
            child: Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(vertical: 15,horizontal: 10),
                decoration: BoxDecoration(
                  border: Border.all(color: Theme.of(context).colorScheme.onPrimaryContainer),
                  borderRadius: BorderRadius.circular(10)
                ),
                child: Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Text(settingsprovider.language=="en"?
                  "English":"العربيه",style: TextStyle(fontSize: 20),),
                )),
          ),
          SizedBox(height: 20,),
          Text("${AppLocalizations.of(context)!.theme}:",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold ),),
          GestureDetector(
            onTap: (){
              showModalBottomSheet(
                context: context, builder: (context) => Themebottom());
            },
            child: Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(vertical: 15,horizontal: 10),
                decoration: BoxDecoration(
                    border: Border.all(color: Theme.of(context).colorScheme.onPrimaryContainer),
                    borderRadius: BorderRadius.circular(10)
                ),
                child: Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Text(settingsprovider.themeMode==ThemeMode.light?"Light":"Dark",style: TextStyle(fontSize: 20),),
                )),
          ),

         
        ],
      ),
    );
  }
}
