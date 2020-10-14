import 'package:flutter/material.dart';

void main () {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "App 7", //Title of the App
      home: Scaffold( //This is the widget that construct the homepage
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text("Forms"), //Title of our homepage
          backgroundColor: Colors.black26,
        ),
        body: Forms()
      )
    );
  }
}

class Forms extends StatefulWidget {
  @override
  _FormsState createState() => _FormsState();
}
class _FormsState extends State<Forms> {
  final keys = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context){
    return Form(
      key: keys,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TextFormField(
            decoration: InputDecoration(
              hintText: "Enter yor name",
              labelText: "Name",
              icon: Icon(Icons.person),
            ),
            validator: (value){
              if(value.isEmpty){
                return 'Please fill the details';
              }
              return null;
            },
          ),
          TextFormField(
            decoration: InputDecoration(
              hintText: "Enter your password",
              labelText: "Password",
              icon: Icon(Icons.lock),
            ),
            validator: (value){
              if(value.isEmpty){
                return 'Please fill the details';
              }
              return null;
            },
          ),
          TextFormField(
            decoration: InputDecoration(
              hintText: "Github link",
              labelText: "Github",
              icon: Icon(Icons.link),
            ),
          ),
          Container(
            child: RaisedButton(
              child: Text("Submit"),
              onPressed: (){
                if(keys.currentState.validate()){
                  Scaffold.of(context).showSnackBar(SnackBar(
                      content: Text("Validation Going on")));
                }
              },
            ),
          )
        ],
      ),
    );
  }
}
