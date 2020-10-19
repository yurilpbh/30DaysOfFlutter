import 'package:flutter/material.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatefulWidget {
  @override
  _myAppState createState() => _myAppState();
}

class _myAppState extends State<myApp> {

  String output = "0", operand = "";

  double num1 = 0, num2 = 0, auxOutput = 0;

  operation(String btnText){
    if(btnText == "C"){
        output = "0";
        auxOutput = 0;
        num1 = 0;
        num2 = 0;
    } else if (btnText == "/" || btnText == "*" || btnText == "+" || btnText == "-"){
      num1 = double.parse(output);
      operand = btnText;
    }else if (operand != ""){
      num2 = double.parse(btnText);
      switch (operand) {
        case "/":
          auxOutput = num1 / num2;
          break;
        case "*":
          auxOutput = num1 * num2;
          break;
        case "+":
          auxOutput = num1 + num2;
          break;
        case "-":
          auxOutput = num1 - num2;
          break;
        default:
          break;
      }
      operand = "";
    }
    else{
      auxOutput = double.parse(btnText);
    }

    setState((){
      output = auxOutput.toStringAsFixed(2);
    });
  }

  Widget button(String btnText){
    return Expanded(
        child: RawMaterialButton(
          shape: Border.all(color: Colors.black, width: 2),
          fillColor: Colors.black12,
          padding: EdgeInsets.all(20.0),
          child: Text(
            btnText,
            style: TextStyle(
              fontSize: 30,
              color: Colors.white,
              fontWeight: FontWeight.w900,
            ),
          ),
          onPressed: (){
            operation(btnText);
          },
        )
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Calculator"),
          backgroundColor: Colors.black12,
        ),
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Expanded(
                child: Container(
                  alignment: Alignment.bottomRight,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 2),
                    color: Colors.black26
                  ),
                  padding: EdgeInsets.all(20.0),
                  margin: EdgeInsets.only(top: 2.0, bottom: 2.0),
                  child: Text(
                    "$output",
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.w600
                    ),
                  ),
                ),
              ),
              Row(
                children: [
                button("9"),
                SizedBox(
                  width: 2,
                ),
                button("8"),
                SizedBox(
                  width: 2,
                ),
                button("7"),
                SizedBox(
                  width: 2,
                ),
                button("-"),
                ],
              ),
              SizedBox(
                height: 2
              ),
              Row(
                children: [
                  button("6"),
                  SizedBox(
                    width: 2,
                  ),
                  button("5"),
                  SizedBox(
                    width: 2,
                  ),
                  button("4"),
                  SizedBox(
                    width: 2,
                  ),
                  button("+"),
                ],
              ),
              SizedBox(
                  height: 2
              ),
              Row(
                children: [
                  button("3"),
                  SizedBox(
                    width: 2,
                  ),
                  button("2"),
                  SizedBox(
                    width: 2,
                  ),
                  button("1"),
                  SizedBox(
                    width: 2,
                  ),
                  button("*"),
                ],
              ),
              SizedBox(
                  height: 2
              ),
              Row(
                children: [
                  button("0"),
                  SizedBox(
                    width: 2,
                  ),
                  /*button("."),
                  SizedBox(
                    width: 2,
                  ),*/
                  button("C"),
                  SizedBox(
                    width: 2,
                  ),
                  button("/"),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}