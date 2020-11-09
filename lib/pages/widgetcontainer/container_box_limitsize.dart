import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//对齐方式与相对定位
class ContainerBoxLimitSize extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    Widget redBox=DecoratedBox(
      decoration: BoxDecoration(color: Colors.red),
    );
    return Scaffold(
      appBar:
      // AppBar(
      //   automaticallyImplyLeading: false,
      //   title: Text("对齐方式与相对定位"),
      //   centerTitle: true,
      // ),
      AppBar(
        title: Text("容器尺寸限制"),
        actions: <Widget>[
          UnconstrainedBox(
              child:SizedBox(
                width: 20,
                height: 20,
                child: CircularProgressIndicator(
                  strokeWidth: 3,
                  valueColor: AlwaysStoppedAnimation(Colors.white70),
                ),
              )
          )
        ],
      ),
      body: Column(
        children: <Widget>[
          ConstrainedBox(
            constraints: BoxConstraints(
                minWidth: double.infinity, //宽度尽可能大
                minHeight: 150.0 //最小高度为50像素
            ),
            child: Container(
                height: 5.0,
                child: redBox
            ),
          ),
          SizedBox(
              width: 80.0,
              height: 80.0,
              child: redBox
          ),
          //多重约束
          ConstrainedBox(
              constraints: BoxConstraints(minWidth: 60.0, minHeight: 60.0), //父
              child: ConstrainedBox(
                constraints: BoxConstraints(minWidth: 90.0, minHeight: 20.0),//子
                child: redBox,
              )
          ),
          //"去除"多重限制，按子组件渲染，单依然受父组件限制其显示范围
          ConstrainedBox(
              constraints: BoxConstraints(minWidth: 60.0, minHeight: 100.0),  //父
              child: UnconstrainedBox( //“去除”父级限制
                child: ConstrainedBox(
                  constraints: BoxConstraints(minWidth: 90.0, minHeight: 20.0),//子
                  child: redBox,
                ),
              )
          )

        ],
      )

    );
  }
}