import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  void showToast(){
    Fluttertoast.showToast(msg: "This is one notification",
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 2,
      backgroundColor: Colors.blueAccent,
      textColor: Colors.black,
      fontSize: 20
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("GridView"),
          ),
          body: Center(
            child: Container(
              child: RaisedButton(
                child: Text("This is toast"),
                onPressed: (){
                  showToast();
                },
                color: Colors.blue,
              ),
            ),
          )
      ),
    );
  }
}
