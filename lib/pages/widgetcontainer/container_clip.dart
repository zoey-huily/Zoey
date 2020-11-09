import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//对齐方式与相对定位
class ContainerClip extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    Widget avatar = Image.asset("assets/images/cicada.jpg", width: 60.0);
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("Clip"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            avatar, //不剪裁
            ClipOval(child: avatar), //剪裁为圆形
            ClipRRect( //剪裁为圆角矩形
              borderRadius: BorderRadius.circular(5.0),
              child: avatar,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Align(
                  alignment: Alignment.topLeft,
                  widthFactor: .5,//宽度设为原来宽度一半，另一半会溢出
                  child: avatar,
                ),
                Text("你好世界", style: TextStyle(color: Colors.green),)
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ClipRect(//将溢出部分剪裁
                  child: Align(
                    alignment: Alignment.topLeft,
                    widthFactor: .5,//宽度设为原来宽度一半
                    child: avatar,
                  ),
                ),
                Text("你好世界",style: TextStyle(color: Colors.green))
              ],
            ),
          ],
        ),
      )
    );
  }
}