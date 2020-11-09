import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class ScrollCustom extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("自定义滚动"),
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[

        ],
      )

    );
  }
}