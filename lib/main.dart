import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: table_Widget()
      //home: switch_Widget(),
    );
  }
}

class switch_Widget extends StatefulWidget {
  @override
  _switch_WidgetState createState() => _switch_WidgetState();
}

class _switch_WidgetState extends State<switch_Widget> {
  bool switchState = false;
  var textValue = "Switch is OFF";
  void display_state(bool value){
    setState(() {
      switchState = !switchState;
      textValue = switchState == false ? "Switch is OFF" : "Switch is ON";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Switch - Day 23"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              child: Transform.scale(
                scale: 2,
                child: Switch(
                  onChanged: display_state,
                  value: switchState,
                  activeColor: Colors.green,
                  inactiveThumbColor: Colors.red,
                  activeTrackColor: Colors.greenAccent,
                  inactiveTrackColor: Colors.redAccent,
                ),
              ),
            ),
          ),
          Text('$textValue')
        ],
      ),
    );
  }
}

class table_Widget extends StatefulWidget {
  @override
  _table_WidgetState createState() => _table_WidgetState();
}

class _table_WidgetState extends State<table_Widget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Table - Day 23"),
      ),
      body: Container(
        margin: EdgeInsets.all(10),
        child: Table(
          defaultColumnWidth: FixedColumnWidth(100),
          border: TableBorder.all(
            color: Colors.blue,
            width: 4,
            style: BorderStyle.solid
          ),
          children: [
            TableRow(
              children: [
                Column(
                  children: [
                    Text("Cel1")
                  ],
                ),
                Column(
                  children: [
                    Text("Cel2")
                  ],
                ),
                Column(
                  children: [
                    Text("Cel3")
                  ],
                ),
              ]
            ),
            TableRow(
                children: [
                  Column(
                    children: [
                      Text("Cel4")
                    ],
                  ),
                  Column(
                    children: [
                      Text("Cel5")
                    ],
                  ),
                  Column(
                    children: [
                      Text("Cel6")
                    ],
                  ),
                ]
            ),
            TableRow(
                children: [
                  Column(
                    children: [
                      Text("Cel7")
                    ],
                  ),
                  Column(
                    children: [
                      Text("Cel8")
                    ],
                  ),
                  Column(
                    children: [
                      Text("Cel9")
                    ],
                  ),
                ]
            ),
          ],
        ),
      ),
    );
  }
}
