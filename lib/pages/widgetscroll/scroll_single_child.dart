import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class ScrollSingleChild extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("SingleChildScrollView"),
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[

        ],
      )

    );
  }
}