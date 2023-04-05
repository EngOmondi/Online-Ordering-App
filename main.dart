import 'package:flutter/material.dart';

import 'home_screen.dart';
import 'snack_detail_screen.dart';
import 'snack.dart';
import 'home_page.dart';
import 'favourites_screen.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Snack Ordering App',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
        accentColor: Colors.amber,
        fontFamily: 'Roboto',
        textTheme: TextTheme(
          headline6: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          bodyText2: TextStyle(fontSize: 18),
        ),
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.blueGrey[900],
        ),
        cardTheme: CardTheme(
          elevation: 4,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        snackBarTheme: SnackBarThemeData(
          backgroundColor: Colors.blueGrey[700],
          contentTextStyle: TextStyle(color: Colors.white),
        ),
      ),
      home: HomePage(),
    );
  }
}
