import 'package:flutter/material.dart';
import 'package:flutter02/pages/home/HomePage.dart';
import 'package:flutter02/pages/home/HomeStack.dart';
import 'package:flutter02/pages/home/ProfilePage.dart';
import 'package:flutter02/pages/home/SettingPage.dart';

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
        primarySwatch: Colors.blue,
      ),

      initialRoute: '/',
      routes: {
        '/' : (context) => HomePage(),
        '/profile' : (context) => ProfilePage(),
        '/setting' : (context) => SettingPage(),
      },

    );
  }
}



