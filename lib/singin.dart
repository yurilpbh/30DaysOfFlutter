import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class SinginPage extends StatelessWidget {

  TextEditingController _email = new TextEditingController();
  TextEditingController _password = new TextEditingController();

  Future<void> signin(BuildContext context) async {
    try{
      UserCredential userCredential = await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: _email.text,
          password: _password.text
      );
    }catch(e){
      print(e);
    }
    Navigator.push(context, MaterialPageRoute(builder: (context)=>MainPage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text("Sing in"),
      ),
      body: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.only(top:100, left: 20, right: 20),
        child: Column(
          children: [
            Container(
              child: TextFormField(
                decoration: InputDecoration(
                    icon: Icon(Icons.email),
                    labelText: "Enter email: ",
                    hintText: "Your email"
                ),
                controller: _email,
              ),
              decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.circular(20)
              ),
              padding: EdgeInsets.only(bottom: 10, right: 5, left: 10),
              margin: EdgeInsets.only(bottom: 20),
            ),
            Container(
              child: TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                    icon: Icon(Icons.lock),
                    labelText: "Enter password: ",
                    hintText: "Your password"
                ),
                controller: _password,
              ),
              decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.circular(20)
              ),
              padding: EdgeInsets.only(bottom: 10, right: 5, left: 10),
              margin: EdgeInsets.only(bottom: 20),
            ),
            Container(
              height: 50,
              width: 150,
              child: FlatButton(
                child: Text("Sign in",
                  style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 16
                  ),
                ),
                onPressed: (){
                  signin(context);
                },
              ),
              decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.circular(20)
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Main Page")
      ),
      body: Container(
        alignment: Alignment.center,
        child: Text("Log in sucessefully!!!"),
      ),
    );
  }
}
