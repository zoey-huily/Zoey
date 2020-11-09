import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//对齐方式与相对定位
class ContainerEdgeInsets extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("边缘填充"),
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
            Padding(
            //上下左右各添加16像素补白
            padding: EdgeInsets.all(16.0),
            child: Column(
              //显式指定对齐方式为左对齐，排除对齐干扰
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  //左边添加8像素补白
                  padding: const EdgeInsets.only(left: 28.0),
                  child: Text("Hello world"),
                ),
                Padding(
                  //上下各添加8像素补白
                  padding: const EdgeInsets.symmetric(vertical: 28.0),
                  child: Text("I am Jack"),
                ),
                Padding(
                  // 分别指定四个方向的补白
                  padding: const EdgeInsets.fromLTRB(120.0,.0,20.0,20.0),
                  child: Text("Your friend"),
                )
              ],
            ),
          )
        ],
      )

    );
  }
}