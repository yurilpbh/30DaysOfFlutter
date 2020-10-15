import 'package:flutter/material.dart';

void main () {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "App 10", //Title of the App
      home: Scaffold( //This is the widget that construct the homepage
        backgroundColor: Colors.grey,
        appBar: AppBar(
          title: Text("Day 14"), //Title of our homepage
          backgroundColor: Colors.black54,
        ),
        body: Padding(
          padding: const EdgeInsets.all(28.0),
          child: Center(
            child: Container(
              height: 200,
              width: 300,
              child: Card(
                color: Colors.yellow,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: ListTile(
                        leading: Icon(Icons.person, size: 40, color: Colors.blue,),
                        title: Text("Yuri Pereira", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black)),
                        subtitle: Text("COO", style: TextStyle(fontWeight: FontWeight.w700, fontSize: 15)),
                      ),
                    ),
                    ButtonBar(
                      children: [
                        RaisedButton(
                          child: FloatingActionButton.extended(onPressed: (){},label: Text("Contact"), icon: Icon(Icons.call)),
                          color: Colors.blue,
                          onPressed: (){}
                        ),
                        RaisedButton(
                            child: Text("Link"),
                            color: Colors.blue,
                            onPressed: (){}
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        )
      )
    );
  }
}
