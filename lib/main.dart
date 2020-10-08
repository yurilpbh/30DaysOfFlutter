import 'package:flutter/material.dart';

void main () {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: "App 2", //Title of the App
      home: Scaffold( //This is the widget that construct the homepage
        backgroundColor: Colors.grey,
        appBar: AppBar(
          title: Text("Container Widget"), //Title of our homepage
          leading: Icon(Icons.home),
          backgroundColor: Colors.black26,
        ),
        body: Container(
          //height: 100,
          width: 100,
          margin: EdgeInsets.all(20),
          alignment: Alignment.center,
          child: Text("Hey Coders!!!"),
          decoration: BoxDecoration(
            border: Border.all(width: 4,color: Colors.black),
            color: Colors.orangeAccent,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.orange, offset: Offset(6.0,6.0),
              )
            ]
          ),
          transform: Matrix4.rotationZ(0.1),
          constraints: BoxConstraints.expand(height: 50.0),
        ),
      ),
    );
  }
}