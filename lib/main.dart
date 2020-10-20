
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  List<String> images = [
    "https://images.unsplash.com/photo-1600856268703-63e89b354c58?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max",
    "https://images.unsplash.com/photo-1502781252888-9143ba7f074e?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max&ixid=eyJhcHBfaWQiOjF9",
    "https://images.unsplash.com/photo-1589641896739-8ba0d81b383a?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max&ixid=eyJhcHBfaWQiOjF9",
    "https://images.unsplash.com/photo-1600856268703-63e89b354c58?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max",
    "https://images.unsplash.com/photo-1502781252888-9143ba7f074e?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max&ixid=eyJhcHBfaWQiOjF9",
    "https://images.unsplash.com/photo-1589641896739-8ba0d81b383a?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max&ixid=eyJhcHBfaWQiOjF9",
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("GridView"),
          ),
          body: GridView.extent(
            primary: false,
            padding: EdgeInsets.all(8),
            maxCrossAxisExtent: 250,
            crossAxisSpacing: 8,
            children: [
              Container(
                  child: Image.network("https://images.unsplash.com/photo-1589641896739-8ba0d81b383a?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max&ixid=eyJhcHBfaWQiOjF9",
                      width: 200,
                      height: 200)
              ),
              Container(
                  child: Image.network("https://images.unsplash.com/photo-1589641896739-8ba0d81b383a?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max&ixid=eyJhcHBfaWQiOjF9",
                      width: 200,
                      height: 200)
              ),
              Container(
                  child: Image.network("https://images.unsplash.com/photo-1589641896739-8ba0d81b383a?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max&ixid=eyJhcHBfaWQiOjF9",
                      width: 200,
                      height: 200)
              ),
              Container(
                  child: Image.network("https://images.unsplash.com/photo-1589641896739-8ba0d81b383a?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max&ixid=eyJhcHBfaWQiOjF9",
                      width: 200,
                      height: 200)
              ),
              Container(
                  child: Image.network("https://images.unsplash.com/photo-1589641896739-8ba0d81b383a?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max&ixid=eyJhcHBfaWQiOjF9",
                      width: 200,
                      height: 200)
              ),
              Container(
                  child: Image.network("https://images.unsplash.com/photo-1589641896739-8ba0d81b383a?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max&ixid=eyJhcHBfaWQiOjF9",
                      width: 200,
                      height: 200)
              ),
              Container(
                  child: Image.network("https://images.unsplash.com/photo-1589641896739-8ba0d81b383a?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max&ixid=eyJhcHBfaWQiOjF9",
                      width: 200,
                      height: 200)
              ),
              Container(
                  child: Image.network("https://images.unsplash.com/photo-1589641896739-8ba0d81b383a?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max&ixid=eyJhcHBfaWQiOjF9",
                      width: 200,
                      height: 200)
              ),
            ],
          )
      ),
    );
  }
}
