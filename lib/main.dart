import 'package:flutter/material.dart';

void main () {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AlertWidget()
    );
  }
}

class AlertWidget extends StatelessWidget {
  //TextEditingController _textEditingController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: RaisedButton(
            child: Text("Basic AlertDialog"),
            onPressed: () async{
              //alertDialogWidget(context);
              //textFieldAlertDialogWidget(context, _textEditingController);
              //  field fieldAtt = await confirmAlertDialogWidget(context);
              //  print("User selection $fieldAtt");
               final selectOpt option = await selectionOptionAlertDialogWidget(context);
               print (option);
            },
            color: Colors.blue,
          ),
        ),
      ),
    );
  }
}

alertDialogWidget(BuildContext context){
  showDialog(context: context,
    builder: (BuildContext context){
      return AlertDialog(
        title: Text("Basic"),
        content: Text("This is for notification purpose!!!"),
        actions: [
          RaisedButton(
            child: Text("OK"),
            color: Colors.blue,
            onPressed: (){
              Navigator.of(context).pop();
            },
          )
        ],
      );
    }
  );
}

textFieldAlertDialogWidget(BuildContext context, TextEditingController textEditingController){
  showDialog(context: context,
      builder: (BuildContext context){
        return AlertDialog(
          title: Text("TextField"),
          content: TextField(
            decoration: InputDecoration(
              hintText: "Enter anything that you want"
            ),
            controller: textEditingController,
          ),
          actions: [
            RaisedButton(
              child: Text("OK"),
              color: Colors.blue,
              onPressed: (){
                Navigator.of(context).pop();
              },
            )
          ],
        );
      }
  );
}

enum field {Cancel, Accept}
Future<field> confirmAlertDialogWidget(BuildContext context) async{

  return showDialog<field>(context: context,
    barrierDismissible: false,
    builder: (BuildContext context){
      return AlertDialog(
        title: Text("Confirm"),
        content: Text("This is for notification purpose"),
        actions: [
          RaisedButton(
            child: Text("Cancel"),
            color: Colors.blue,
            onPressed: (){
              Navigator.of(context).pop(field.Cancel);
            },
          ),
          RaisedButton(
            child: Text("Accept"),
            color: Colors.blue,
            onPressed: (){
              Navigator.of(context).pop(field.Accept);
            },
          )
        ],
      );
    }
  );
}

enum selectOpt {C,Java,Python,PHP}
Future<selectOpt> selectionOptionAlertDialogWidget(BuildContext context) async{

  return showDialog<selectOpt>(
    context: context,
    barrierDismissible: true,
    builder: (BuildContext context){
      return SimpleDialog(
        title: Text("Choose any one"),
        children: [
          SimpleDialogOption(
            onPressed: (){
              Navigator.pop(context, selectOpt.C);
            },
            child: Text("C"),
          ),
          SimpleDialogOption(
            onPressed: (){
              Navigator.pop(context, selectOpt.Java);
            },
            child: Text("Java"),
          ),
          SimpleDialogOption(
            onPressed: (){
              Navigator.pop(context, selectOpt.Python);
            },
            child: Text("Python"),
          ),
          SimpleDialogOption(
            onPressed: (){
              Navigator.pop(context, selectOpt.PHP);
            },
            child: Text("PHP"),
          )
        ],
      );
    }
  );
}