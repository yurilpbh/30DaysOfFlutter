import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Day21"),
        ),
        //body: Linear_progress_bar(),
        //body: Circular_progress_bar(),
        body: Snack_bar(),
      ),
    );
  }
}

class Linear_progress_bar extends StatefulWidget {
  @override
  _Linear_progress_barState createState() => _Linear_progress_barState();
}

class _Linear_progress_barState extends State<Linear_progress_bar> {
  bool loading = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(
            child: Container(
              margin: EdgeInsets.all(20),
              child: loading?LinearProgressIndicator():Text("Please Click to download"),
            ),
          ),
          RaisedButton(
            child: Text("Download"),
            color: Colors.blue,
            onPressed: (){
              setState(() {
                loading = !loading;
              });
            },
          )
        ],
      ),
    );
  }
}

class Circular_progress_bar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: CircularProgressIndicator(
          backgroundColor: Colors.grey,
          strokeWidth: 4,
        ),
      ),
    );
  }
}

class Snack_bar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: RaisedButton(
          child: Text("Snack Bar"),
          color: Colors.green,
          onPressed: (){
            final msg = SnackBar(
              content: Text("This is notification"),
              duration: Duration(seconds: 1),
            );
            Scaffold.of(context).showSnackBar(msg);
          },
        ),
      ),
    );
  }
}
