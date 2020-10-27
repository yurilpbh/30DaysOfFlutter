import 'package:flutter/material.dart';
import 'dart:async';
import 'package:splashscreen/splashscreen.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen2(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class SplashScreen1 extends StatefulWidget {
  @override
  _SplashScreenState1 createState() => _SplashScreenState1();
}

class _SplashScreenState1 extends State<SplashScreen1> {
  void initState(){
    super.initState();
    Timer(
      Duration(seconds: 4),()=>
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>HomePage()))
    );
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Image.network("https://images.unsplash.com/photo-1601230469159-77a3bfe240c0?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max"),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HomePage - Day 26"),
      ),
      body: Center(
        child: Text("Welcome to the HomePage"),
      ),
    );
  }
}

class SplashScreen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 4,
      navigateAfterSeconds: HomePage(),
      title: Text("E-Learning Platform for everyone"),
      image: Image.network("https://images.unsplash.com/photo-1601230469159-77a3bfe240c0?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max"),
      photoSize: 100,
      loadingText: Text("Loading"),
      loaderColor: Colors.red,
    );
  }
}
