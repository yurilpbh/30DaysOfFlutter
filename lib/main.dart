import 'package:flutter/material.dart';
import 'signup.dart';
import 'package:firebase_core/firebase_core.dart';

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
              child: Text("Singup"),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>SignupPage()));
              },
            )
          ],
        ),
      ),
    );
  }
}



//
// class SplashScreen1 extends StatefulWidget {
//   @override
//   _SplashScreenState1 createState() => _SplashScreenState1();
// }
//
// class _SplashScreenState1 extends State<SplashScreen1> {
//   void initState(){
//     super.initState();
//     Timer(
//       Duration(seconds: 4),()=>
//         Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>HomePage()))
//     );
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: Colors.white,
//       child: Image.network("https://images.unsplash.com/photo-1601230469159-77a3bfe240c0?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max"),
//     );
//   }
// }
//
// class HomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("HomePage - Day 26"),
//       ),
//       body: Center(
//         child: Text("Welcome to the HomePage"),
//       ),
//     );
//   }
// }
//
// class SplashScreen2 extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return SplashScreen(
//       seconds: 4,
//       navigateAfterSeconds: HomePage(),
//       title: Text("E-Learning Platform for everyone"),
//       image: Image.network("https://images.unsplash.com/photo-1601230469159-77a3bfe240c0?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max"),
//       photoSize: 100,
//       loadingText: Text("Loading"),
//       loaderColor: Colors.red,
//     );
//   }
// }
