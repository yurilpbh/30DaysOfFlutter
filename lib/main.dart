import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ImageSlider(),
      //home: slider(),
      //home: tooltip_widget(),
    );
  }
}

class tooltip_widget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tooltip"),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Tooltip(
          message: "Set Alarm",
          waitDuration: Duration(seconds: 2),
          showDuration: Duration(seconds: 3),
          textStyle: TextStyle(
            fontSize: 20,
            color: Colors.white
          ),
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadiusDirectional.circular(20)
          ),
          child: FlatButton(
            child: Icon(
              Icons.alarm,
              size: 150,
            ),
          ),
        ),
      ),
    );
  }
}
class slider extends StatefulWidget {
  @override
  _sliderState createState() => _sliderState();
}

class _sliderState extends State<slider> {
  int _value=6;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Slider"),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(left:20),
            child: Icon(
              Icons.volume_up,
              size: 50,
            ),
          ),
          Expanded(
            child: Slider(
              value: _value.toDouble(),
              min: 1,
              max: 20,
              activeColor: Colors.green,
              inactiveColor: Colors.grey,
              label: "Set up volume",
              onChanged: (double newvalue){
                setState(() {
                  _value = newvalue.round();
                });
              },
            ),
          )
        ],
      ),
    );
  }
}

class ImageSlider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(40),
      child: imageSlider(context),
      constraints: BoxConstraints.expand(
        height: 200
      ),
    );
  }
}

Swiper imageSlider(BuildContext context){
  return new Swiper(
    autoplay: true,
    itemCount: 10,
    itemBuilder: (BuildContext context, int index){
      return Image.network(
        "https://images.unsplash.com/photo-1500283281129-71909ce26948?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max&ixid=eyJhcHBfaWQiOjF9"
      );
    },
  );
}