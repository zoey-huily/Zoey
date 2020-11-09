//线性布局

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LayoutLinearColumn extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("线性布局（Column）"),
        centerTitle: true,
      ),
      // body: Column(
      //   //测试Row对齐方式，排除Column默认居中对齐的干扰
      //   crossAxisAlignment: CrossAxisAlignment.center,//纵向布局居中，相对于整个column的宽度居中对齐
      //   children: <Widget>[
      //       Text(" hi "),
      //       Text(" I am Jack "),
      //   ],
      // ),
      //居中显示的方式
      body:ConstrainedBox(
        constraints: BoxConstraints(minWidth: double.infinity),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text("hi"),
            Text("world"),
          ],
        ),
      )
    );
  }
}