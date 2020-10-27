import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: calendar_Widget()
      //home: switch_Widget(),
    );
  }
}

class calendar_Widget extends StatefulWidget {
  @override
  _calendar_WidgetState createState() => _calendar_WidgetState();
}

class _calendar_WidgetState extends State<calendar_Widget> {
  CalendarController _controller;
  void initState(){
    super.initState();
    _controller = CalendarController();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calendar - Day 24"),
      ),
      body: Column(
        children: [
          TableCalendar(
            initialCalendarFormat: CalendarFormat.month,
            calendarController: _controller,
            calendarStyle: CalendarStyle(
              selectedColor: Colors.deepPurpleAccent,
              todayColor: Colors.blueAccent.shade100
            ),
            headerStyle: HeaderStyle(
              centerHeaderTitle: true,
              formatButtonDecoration: BoxDecoration(
                color: Colors.black26,
                borderRadius: BorderRadiusDirectional.circular(20)
              ),
              formatButtonShowsNext: false,
            ),
          )
        ],
      ),
    );
  }
}
