import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //home: FirstScreen(),
      initialRoute: '/',
      routes: {
        '/': (context)=>FirstScreen(),
        '/second': (context)=>SecondScreen(),
        '/third' : (context)=>ThirdScreen()
      },
    );
  }
}

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FirstScreen - Day 25"),
      ),
      body: Center(
        child: Container(
          child: RaisedButton(
            child: Text("Click to go the second Page"),
            color: Colors.blueAccent,
            onPressed: (){
              Navigator.pushNamed(context, '/second');
              //Navigator.push(context, MaterialPageRoute(
                //builder: (context)=>SecondScreen()));
            },
          ),
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SecondScreen - Day 25"),
      ),
      body: Center(
        child: Container(
          child: RaisedButton(
            color: Colors.redAccent,
            child: Text("Click to go the third Page"),
            onPressed: (){
              Navigator.pushNamed(context, '/third');
            },
          ),
        ),
      ),
    );
  }
}

class ThirdScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ThirdScreen - Day 25"),
      ),
      body: Center(
        child: Container(
          child: RaisedButton(
            color: Colors.redAccent,
            child: Text("Click to go back to the last Page"),
            onPressed: (){
              Navigator.pop(context);
            },
          ),
        ),
      ),
    );
  }
}