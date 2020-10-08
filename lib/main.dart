import 'package:flutter/material.dart';

void main () {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
        title: "App 1", //Title of the App
        home: Scaffold( //This is the widget that construct the homepage
          backgroundColor: Colors.grey,
          appBar: AppBar(
            title: Text("Day 4"), //Title of our homepage
            leading: Icon(Icons.home),
            backgroundColor: Colors.black26,
          ),
          body: Center(child: Text("Hello world"),
          ),
        )
    );
  }
}