import 'package:flutter/material.dart';
import 'signup.dart';
import 'package:firebase_core/firebase_core.dart';
import 'singin.dart';

Future<void> main () async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Signup Using Firebase - Day 28"),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          children: [
            RaisedButton(
              child: Text("Sing up"),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>SingupPage()));
              },
            ),
            RaisedButton(
              child: Text("Sing in"),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>SinginPage()));
              },
            )
          ],
        ),
      ),
    );
  }
}