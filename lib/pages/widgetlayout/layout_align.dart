import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//对齐方式与相对定位
class LayoutAlign extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("对齐方式与相对定位"),
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          Container(
            // height: 120.0,
            // width: 120.0,
            color: Colors.blue[50],
            child: Align(
              widthFactor: 2,
              heightFactor: 2,
              //alignment: Alignment.center,
              //alignment: Alignment(0.0,0.0),
              alignment: FractionalOffset(0.5, 0.5),
              child: FlutterLogo(
                size: 60,
              ),
            ),
          ),
          //widthFactor或heightFactor为null时组件的宽高将会占用尽可能多的空间，这一点需要特别注意
          DecoratedBox(
            decoration: BoxDecoration(color: Colors.red),
            child: Center(
              child: Text("xxx"),
            ),
          ),
          DecoratedBox(
            decoration: BoxDecoration(color: Colors.red),
            child: Center(
              widthFactor: 1,
              heightFactor: 1,
              child: Text("xxx"),
            ),
          )
        ],
      )

    );
  }
}