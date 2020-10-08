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
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Container(
              height: 50,
              width: 100,
              color: Colors.orange,
              margin: EdgeInsets.all(10),
              child: Text("CodeWarriors"),
            ),
            Container(
              height: 50,
              width: 100,
              color: Colors.orange,
              margin: EdgeInsets.all(10),
              child: Text("Hey"),
            ),
            Container(
              height: 50,
              width: 100,
              color: Colors.orange,
              margin: EdgeInsets.all(10),
              child: Text("Coders!!!"),
            )
          ],
        ),
      ),
    );
  }
}