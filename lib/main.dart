import 'package:flutter/material.dart';

void main () {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "App 9", //Title of the App
      home: Scaffold( //This is the widget that construct the homepage
        backgroundColor: Colors.grey,
        appBar: AppBar(
          title: Text("Day 13"), //Title of our homepage
          backgroundColor: Colors.black54,
        ),
        body: Padding(
          padding: const EdgeInsets.all(28.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                children: [
                  Icon(Icons.home,
                    color: Colors.green,
                    size: 40,
                    textDirection: TextDirection.rtl
                  ),
                  Text("Home"),
                ],
              ),
              Column(
                children: [
                  Icon(Icons.access_alarm,
                      color: Colors.red,
                      size: 40,
                      textDirection: TextDirection.rtl
                  ),
                  Text("Alarm"),
                ],
              ),
              Column(
                children: [
                  Icon(Icons.delete,
                      color: Colors.black,
                      size: 40,
                      textDirection: TextDirection.rtl
                  ),
                  Text("Delete"),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      FadeInImage.assetNetwork(placeholder: 'assets/download.jpg', image: 'http://source.unsplash.com/random?id=5', width: 200,),
                    ],
                  ),
                ],
              ),
            ],
          ),
        )
      )
    );
  }
}
