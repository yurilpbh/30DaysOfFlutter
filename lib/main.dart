import 'package:flutter/material.dart';
import 'package:flutter_app/newcard.dart';

void main(){
  runApp(myApp(
    //names: List<String>.generate(50, (a) => "Coders! $a")
  ));
}

class myApp extends StatelessWidget {
  // final List<String> names;
  //
  // myApp({Key key, this.names}):super(key:key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("GridView List"),
        ),
        body: GridView.count(
            crossAxisCount: 2,
          children: List.generate(datas.length, (index) {
            return Center(
              child: newcard(
                datas: datas[index],
              ),
            );
          }),
        )
      ),
    );
  }
}

class data {
  const data({this.title, this.icon});
  final String title;
  final IconData icon;
}

const List<data> datas = const <data>[
  const data(title: 'Home', icon: Icons.home),
  const data(title: 'Home', icon: Icons.home),
  const data(title: 'Home', icon: Icons.home),
  const data(title: 'Home', icon: Icons.home),
  const data(title: 'Home', icon: Icons.home),
  const data(title: 'Home', icon: Icons.home),
  const data(title: 'Home', icon: Icons.home),
  const data(title: 'Home', icon: Icons.home),
];