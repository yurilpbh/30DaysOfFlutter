import 'package:flutter/material.dart';

void main () {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "App 4", //Title of the App
      home: Scaffold( //This is the widget that construct the homepage
        backgroundColor: Colors.grey,
        appBar: AppBar(
          title: Text("Portfolio"), //Title of our homepage
          backgroundColor: Colors.black26,
        ),
        body: Center(
          child: Column(
            children: [
              Center (
                child: Container(
                  margin: EdgeInsets.only(top: 40),
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.lightBlueAccent,
                    border: Border.all(color: Colors.white, width: 5),
                  ),
                  child: Center(child: Text("S", style: TextStyle(fontSize: 80, color: Colors.white),)),
                ),
              ),
              Container(
                margin: EdgeInsets.all(30),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.lightBlueAccent,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Usuário",
                      icon: Icon(Icons.person, color: Colors.white),
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 30, right: 30),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.lightBlueAccent,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Password",
                      icon: Icon(Icons.lock, color: Colors.white),
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 30,top: 30, right: 30),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.lightBlueAccent,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Github",
                      icon: Icon(Icons.link, color: Colors.white),
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 30,top: 30, right: 30),
                alignment: Alignment.center,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.lightBlueAccent,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                  child: Text("Update", style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    fontStyle: FontStyle.italic
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}