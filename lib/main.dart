import 'package:flutter/material.dart';

void main () {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: "App 3", //Title of the App
      home: Scaffold( //This is the widget that construct the homepage
        backgroundColor: Colors.grey,
        appBar: AppBar(
          title: Text("Day 7"), //Title of our homepage
          leading: Icon(Icons.home),
          backgroundColor: Colors.black26,
        ),
        body: Column(
          children: [
            Text(
                "Hello World!!! Coders",
                style: TextStyle(
                    color: Colors.blue,
                    fontSize: 25,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.w700,
                    backgroundColor: Colors.amberAccent,
                    letterSpacing: 1.0,
                    wordSpacing: 1.0,
                    shadows: [
                      Shadow(
                        color: Colors.lightBlueAccent,
                        offset: Offset(2.0,2.0),
                      )
                    ]
                )
            ),
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: RichText(
                text: TextSpan(
                  text: 'Hello!!!',
                  style: TextStyle(
                    color: Colors.amber,
                  ),
                  children:  <TextSpan>[
                    TextSpan(
                      text: 'Coders',
                      style: TextStyle(
                        color: Colors.blueAccent,
                      ),
                    )
                  ]
                )
             ),
           ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Name: ',
                  hintText: 'Enter Your name',
                ),
              ),
            ),
          ]
        ),
      ),
    );
  }
}