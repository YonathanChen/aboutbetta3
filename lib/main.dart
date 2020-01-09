import 'package:aboutbetta3/screens/detail2.dart';
import 'package:aboutbetta3/screens/detail3.dart';
import 'package:aboutbetta3/screens/detail4.dart';
import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:aboutbetta3/screens/detail.dart';
import 'package:aboutbetta3/screens/mainPage.dart';
import 'package:aboutbetta3/screens/homePage.dart';


void main(){
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'About Betta',
    theme: ThemeData(
      primaryColor: Colors.white,
    ),
    initialRoute: '/',
    routes: {
      '/' : (context) => MyApp(),
      MainPage.routeName : (context) => MainPage(),
      HomePage.routeName : (context) => HomePage(),
      Detail.routeName : (context) => Detail(),
      Detail2.routeName : (context) => Detail2(),
      Detail3.routeName : (context) => Detail3(),
      Detail4.routeName : (context) => Detail4(),
      
      

      
    },
  ));
}

class MyApp extends StatefulWidget {
  @override
  MyAppState createState() => new MyAppState();
}

class MyAppState extends State<MyApp> {
  String title = 'About Betta';
  @override
  Widget build(BuildContext context) {
    return new SplashScreen(
      seconds: 3,
      navigateAfterSeconds: new MainPage(),
      title: new Text(this.title,    
      style: new TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 20,
        color: Colors.red
        ),
      ),
      backgroundColor: Colors.white,
      styleTextUnderTheLoader: new TextStyle(),
      onClick: ()=> print('Wait a moment please'),
      loaderColor: Colors.red,
    );
  }
}