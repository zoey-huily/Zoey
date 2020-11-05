import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/// 由于StatefulWidget的的具体逻辑都在其State中，所以很多时候，我们需要获取StatefulWidget
/// 对应的State对象来调用一些方法，比如Scaffold组件对应的状态类ScaffoldState中就定义了打开
/// SnackBar(路由页底部提示条)的方法。

class GetFatherState extends StatefulWidget {
  const GetFatherState({
    Key key,
    this.initValue: 0
  });

  final int initValue;

  @override
  _CounterWidgetState createState() => new _CounterWidgetState();
}

class _CounterWidgetState extends State<GetFatherState> {
  //定义一个globalKey, 由于GlobalKey要保持全局唯一性，我们使用静态变量存储
  static GlobalKey<ScaffoldState> _globalKey= GlobalKey();
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        key:_globalKey , //设置key
        appBar: AppBar(
          title: Text("子树中获取State对象"),
        ),
        body: Center(
          child: Builder(builder: (context) {
            return RaisedButton(
              onPressed: () {
                // 方式1：查找父级最近的Scaffold对应的ScaffoldState对象
                //ScaffoldState _state = context.findAncestorStateOfType<ScaffoldState>();
                // 方式2：直接通过of静态方法来获取ScaffoldState
                ScaffoldState _state=Scaffold.of(context);
                // 方式3：通过GlobalKey来获取State对象,开销较大，不推荐。。。
                //ScaffoldState _state=_globalKey.currentState;
                //调用ScaffoldState的showSnackBar来弹出SnackBar
                _state.showSnackBar(
                  SnackBar(
                    content: Text("我是SnackBar"),
                  ),
                );
              },
              child: Text("显示SnackBar"),
            );
          }),
        ),
      );
    }
}