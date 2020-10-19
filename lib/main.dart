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
          title: Text("Horizontal List"),
        ),
        body: Container(
          height: 150.0,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              Container(
                width: 148.0,
                color: Colors.yellow,
                child: Center(
                  child: ListTile(
                    leading: Icon(Icons.home),
                    title: Text("Home"),
                  ),
                ),
              ),
              Container(
                width: 148.0,
                color: Colors.red,
                child: Center(
                  child: ListTile(
                    leading: Icon(Icons.accessible),
                    title: Text("Acessibility"),
                  ),
                ),
              ),
              Container(
                width: 148.0,
                color: Colors.green,
                child: Center(
                  child: ListTile(
                    leading: Icon(Icons.cached),
                    title: Text("Update"),
                  ),
                ),
              ),
              Container(
                width: 148.0,
                color: Colors.blue,
                child: Center(
                  child: ListTile(
                    leading: Icon(Icons.g_translate),
                    title: Text("Translate"),
                  ),
                ),
              ),
            ],
          ),
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