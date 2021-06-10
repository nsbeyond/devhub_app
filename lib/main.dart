import 'package:devhub_app/pages/home/welcome_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.cyan,
        primaryColor: Colors.white,
        primaryTextTheme: TextTheme(
          headline6: GoogleFonts.prompt(
            fontWeight: FontWeight.bold
          )
        )
      ),
      home: WelcomePage());
  }
}
