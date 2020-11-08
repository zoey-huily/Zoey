import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ButtonDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            automaticallyImplyLeading: false,
            title: Text("button"),
            centerTitle: true,
        ),
        body: Center(
          child: Column(
            children:<Widget> [
              //漂浮（凸起）按钮
              RaisedButton(
                child: Text("normal"),
                onPressed: () {},
              ),
              //扁平按钮
              FlatButton(
                child: Text("normal"),
                onPressed: () {},
              ),
              //带边框的button
              OutlineButton(
                child: Text("normal"),
                onPressed: () {},
              ),
              //图标button
              IconButton(
                icon: Icon(Icons.thumb_up),
                onPressed: () {},
              ),
              //图标button
              RaisedButton.icon(
                icon: Icon(Icons.send),
                label: Text("发送"),
                onPressed: () {},
              ),
              OutlineButton.icon(
                icon: Icon(Icons.add),
                label: Text("添加"),
                onPressed: () {},
              ),
              FlatButton.icon(
                icon: Icon(Icons.info),
                label: Text("详情"),
                onPressed: () {},
              ),
              //自定义按钮（背景蓝色，两边圆角的按钮）
              FlatButton(
                color: Colors.blue,
                highlightColor: Colors.blue[700],
                colorBrightness: Brightness.dark,
                splashColor: Colors.grey,
                child: Text("Submit"),
                shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                onPressed: () {},
              )


            ],
          )
        ),
    );
  }
}