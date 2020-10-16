import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main () {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "App 11", //Title of the App
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text("TabBar"),
            backgroundColor: Colors.black87,
            bottom: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.home), text: "Home"),
                Tab(icon: Icon(Icons.settings), text: "Settings"),
                Tab(icon: Icon(Icons.local_grocery_store), text: "Store")
              ],
            ),
          ),
          body: TabBarView(
            children: [
              HomePage(),
              SettingsPage(),
              StorePage()
            ],
          ),
        ),
      )
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Text("Home", style: TextStyle(fontSize: 60))
      ),
    );
  }
}

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          child: Text("Settings", style: TextStyle(fontSize: 60))
      ),
    );
  }
}

class StorePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          child: Text("Store", style: TextStyle(fontSize: 60))
      ),
    );
  }
}