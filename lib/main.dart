import 'package:basics_c10_monday/basics/home.dart';
import 'package:basics_c10_monday/calculator/calculatorScreen.dart';
import 'package:basics_c10_monday/counter/counter_screen.dart';
import 'package:basics_c10_monday/slider_image/slider_image.dart';
import 'package:basics_c10_monday/xo/login.dart';
import 'package:basics_c10_monday/xo/xo.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// [1,2,5,3,6,8]

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute:LoginScreen.routeName,
      routes: {
        XoGame.routeName:(context)=>XoGame(),
        LoginScreen.routeName:(context)=>LoginScreen(),
      },
    );
  }
}
