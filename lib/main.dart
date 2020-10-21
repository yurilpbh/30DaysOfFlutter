import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

enum Gender{Male,Female,PreferNotSay}

class _MyAppState extends State<MyApp> {
  bool firstbox = false, secondbox = false;
  Gender gender = Gender.Male;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Checkbox and RadioButton"),
        ),
        body: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Text("Hobby"),
              Row(
                children: [
                  Text("Painting"),
                  Checkbox(
                    checkColor: Colors.red,
                    activeColor: Colors.greenAccent,
                    value: this.firstbox,
                    onChanged: (bool value){
                      setState((){
                        this.firstbox = value;
                      });
                    },
                  ),
                ],
              ),
              Row(
                children: [
                  Text("Singing"),
                  Checkbox(
                    value: this.secondbox,
                    onChanged: (bool value){
                      setState((){
                        this.secondbox = value;
                      });
                    },
                  ),
                ],
              ),
              CheckboxListTile(
                title: Text("Hey what's up ?"),
                subtitle: Text("Fine!"),
                secondary: Icon(Icons.call),
                value: this.firstbox,
                onChanged: (bool value){
                  setState(() {
                    this.firstbox = value;
                  });
                }
              ),
              ListTile(
                leading: Radio(
                  value: Gender.Male,
                  groupValue: gender,
                  onChanged: (Gender value){
                    setState(() {
                      this.gender=value;
                    });
                  }
                ),
                title: Text("Male"),
              ),
              ListTile(
                leading: Radio(
                    value: Gender.Female,
                    groupValue: gender,
                    onChanged: (Gender value){
                      setState(() {
                        this.gender=value;
                      });
                    }
                ),
                title: Text("Female"),
              ),
              ListTile(
                leading: Radio(
                    value: Gender.PreferNotSay,
                    groupValue: gender,
                    onChanged: (Gender value){
                      setState(() {
                        this.gender=value;
                      });
                    }
                ),
                title: Text("Prefer Not Say"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
