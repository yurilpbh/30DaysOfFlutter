import 'package:flutter/material.dart';

void main(){
  runApp(myApp(
    names: List<String>.generate(50, (a) => "Coders! $a")
  ));
}

class myApp extends StatelessWidget {
  final List<String> names;

  myApp({Key key, this.names}):super(key:key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Long List"),
        ),
        body: ListView.builder(
          itemCount: names.length,
          itemBuilder: (context, index){
            return ListTile(
              title: Text("Hi ${names[index]}"),
            );
          },
        ),
      ),
    );
  }
}