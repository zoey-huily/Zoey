import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SwitchDemo extends StatefulWidget {
  @override
  _SwitchTestRouteState createState() => new _SwitchTestRouteState();
}

class _SwitchTestRouteState extends State<SwitchDemo> {
  bool _switchSelected=true; //维护单选开关状态
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
            Switch(
              value: _switchSelected,//当前状态
              onChanged:(value){
                //重新构建页面
                setState(() {
                  _switchSelected=value;
                });
              },
            ),
          ],
        )
    );
  }
}