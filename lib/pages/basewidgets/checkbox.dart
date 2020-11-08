import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CheckBoxDemo extends StatefulWidget {
  @override
  _CheckBoxTestRouteState createState() => new _CheckBoxTestRouteState();
}

class _CheckBoxTestRouteState extends State<CheckBoxDemo> {
  bool _checkboxSelected=true;//维护复选框状态
  bool _checkboxSelected1=true;//维护复选框状态
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text("switch"),
          centerTitle: true,
        ),
        body: Column(
          children: <Widget>[
            Checkbox(
              value: _checkboxSelected,
              activeColor: Colors.red, //选中时的颜色
              onChanged:(value){
                setState(() {
                  _checkboxSelected=value;
                });
              } ,
            ),
            Checkbox(
              value: _checkboxSelected1,
              activeColor: Colors.red, //选中时的颜色
              onChanged:(value){
                setState(() {
                  _checkboxSelected1=value;
                });
              } ,
            ),
          ],
        )
    );
  }
}