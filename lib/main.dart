import 'package:flutter/material.dart';

void main(){
  runApp(myApp());
}

class myApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Basic List"),
        ),
        body: ListView(
          children: [
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
            ),
            ListTile(
              leading: Icon(Icons.accessible),
              title: Text("Acessibility"),
            ),
            ListTile(
              leading: Icon(Icons.access_alarm),
              title: Text("Time"),
            ),
          ],
        ),
      ),
    );
  }
}