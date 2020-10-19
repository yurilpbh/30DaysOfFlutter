import 'package:flutter/material.dart';
import 'main.dart';

class newcard extends StatelessWidget {
  final data datas;
  newcard({Key key, this.datas}):super(key:key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Card(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(child: Icon(datas.icon,size: 50,)),
          Text(datas.title,style: TextStyle(fontSize: 20),)
        ],
      ),
    );
  }
}