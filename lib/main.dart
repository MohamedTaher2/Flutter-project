
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Home/LoginScreen.dart';
import 'Home/intro_slider.dart';


void main() {
  runApp( const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:IntroSliderPage(),

    );
  }
}


