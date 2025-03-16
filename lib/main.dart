import 'package:flutter/material.dart';
import 'package:codehub/home_page.dart';
import 'package:codehub/course_details_page.dart';
import 'package:codehub/global_variables.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp ({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp (
      title: 'CodeHub',
      debugShowCheckedModeBanner: false,
      theme: ThemeData (
        scaffoldBackgroundColor: Colors.white,
        fontFamily: "Lato",
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.black,primary: Colors.amber,secondary: Colors.yellow,tertiary: Colors.white),
        inputDecorationTheme: InputDecorationTheme(
            hintStyle: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              color: Color.fromRGBO(150, 150, 150, 1),
            ),
            prefixIconColor: Color.fromRGBO(150, 150, 150, 1)
        ),
        textTheme: TextTheme(
            titleLarge: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 36,
              fontFamily: 'Lato',
            ),
            titleMedium: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24,
              fontFamily: 'Lato',
            ),
            bodySmall: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14,
              fontFamily: 'Lato',
            )
        ),
        appBarTheme: AppBarTheme(
            color: Colors.white,
            titleTextStyle: TextStyle(fontSize: 24,color: Colors.black54,fontFamily: 'Lato',fontWeight: FontWeight.w800)
        ),
      ),
      home: const HomePage(),
    );
  }
}