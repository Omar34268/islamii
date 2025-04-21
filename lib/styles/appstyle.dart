import 'package:flutter/material.dart';
class  Appstyle extends StatelessWidget {
  static bool isdark = true;
  static const Color darkprimary = Color(0xff141A2E);
  static  ThemeData lighttheme = ThemeData(
    bottomSheetTheme: BottomSheetThemeData(
      backgroundColor: Colors.white
    ),
    textTheme: TextTheme(
        bodyMedium:
        TextStyle(color: Colors.black, fontWeight:FontWeight.bold,
            fontSize: 25),
        titleMedium: TextStyle(
          color: Colors.black,
        ),
        bodyLarge: TextStyle(
            color:  Colors.black,
            fontSize: 30
        ),
        bodySmall: TextStyle(
            color: Colors.black,
            fontSize: 25,
            fontWeight: FontWeight.bold
        ),
      displayMedium: TextStyle(

      )
    ),
    cardTheme: CardTheme(
      surfaceTintColor: Colors.white,
      elevation: 15,
      color: Colors.white,
      margin: EdgeInsets.all(30),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.white,
        backgroundColor: Color(0xffB7935F),
        selectedIconTheme: IconThemeData(
          color: Colors.black,
          size: 45,
        ),
        unselectedIconTheme: IconThemeData(
          color: Colors.white,
          size: 45,
        )

    ),
    dividerTheme:DividerThemeData(
        thickness: 2,
        color: Color(0xffB7935F)
    ) ,
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: AppBarTheme(
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.transparent,
        titleTextStyle: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.black
        )
    ),
    colorScheme: ColorScheme.fromSeed(
        seedColor: Colors.deepPurple,
        primary: Color(0xffB7935F),
        secondary: Color(0xffB7935F).withOpacity(0.57),
        onPrimary: Colors.white,
        onSecondary: Colors.black,
        onPrimaryContainer: Color(0xffB7935F)
    ),
  );
  static  ThemeData darktheme = ThemeData(
    bottomSheetTheme: BottomSheetThemeData(
        backgroundColor: darkprimary
    ),
    textTheme: TextTheme(
      bodyMedium: TextStyle(color: Colors.white,
          fontWeight:FontWeight.bold,
          fontSize: 25),
          titleMedium: TextStyle(
         color: Colors.white
    ),
          bodyLarge: TextStyle(
            color:  Color(0xffFACC1D),
            fontSize: 30
          ),
      bodySmall: TextStyle(
        color: Colors.white,
          fontSize: 25,
          fontWeight: FontWeight.bold
      )
    ),
    cardTheme: CardTheme(
      surfaceTintColor: darkprimary,
      elevation: 15,
      color: darkprimary,
      margin: EdgeInsets.all(30),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedItemColor: Color(0xffFACC1D),
        unselectedItemColor: Colors.white,
        backgroundColor: Color(0xff141A2E),
        selectedIconTheme: IconThemeData(
          color: Color(0xffFACC1D),
          size: 45,
        ),
        unselectedIconTheme: IconThemeData(
          color: Colors.white,
          size: 45,
        )

    ),
    dividerTheme:DividerThemeData(
        thickness: 2,
        color: Color(0xffFACC1D)
    ) ,
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: AppBarTheme(
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Colors.transparent,
        titleTextStyle: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.white
        )
    ),
    colorScheme: ColorScheme.fromSeed(
        seedColor: Colors.deepPurple,
        primary: darkprimary,
        secondary:Color(0xffFACC1D),
        onPrimary: darkprimary,
        onSecondary: Colors.black,
        onPrimaryContainer: Color(0xffFACC1D)
    ),
  );

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}
