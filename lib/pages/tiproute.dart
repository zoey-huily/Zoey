//新页面，路由带参数
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TipRoute extends StatelessWidget {
  // TipRoute({
  //   Key key,
  //   @required this.text,  // 接收一个text参数
  // }) : super(key: key);
  // final String text;

  @override
  Widget build(BuildContext context) {
    var args=ModalRoute.of(context).settings.arguments;
    print("args:::"+args.toString());
    return Scaffold(
      appBar: AppBar(
        title: Text("提示"),
      ),
      body: Padding(
        padding: EdgeInsets.all(18),
        child: Center(
          child: Column(
            children: <Widget>[
              Text("111"+args.toString()),
              RaisedButton(
                onPressed: () => Navigator.pop(context, "我是返回值"),
                child: Text("返回"),
              )
            ],
          ),
        ),
      ),
    );
  }
}