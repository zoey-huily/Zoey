import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("text"),
        centerTitle: true,
      ),
      body: Column(
        children:<Widget> [
          //左对齐
          Text("Hello world",
            textAlign: TextAlign.left,
          ),
          Text("Hello world! I'm Jack. "*4,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          Text("Hello world",
          textScaleFactor: 1.5,
          ),
          Text("Hello world "*6,  //字符串重复六次
            textAlign: TextAlign.left,
          ),
          Text("Hello world",
            style: TextStyle(
                color: Colors.blue,
                fontSize: 18.0,
                height: 1.2,
                fontFamily: "Courier",
                background: new Paint()..color=Colors.yellow,
                decoration:TextDecoration.underline,
                decorationStyle: TextDecorationStyle.dashed
            )
          ),
          //text片段，适用一段文本不同的样式
          Text.rich(TextSpan(
              children: [
                TextSpan(
                    text: "Home: "
                ),
                TextSpan(
                    text: "https://flutterchina.club",
                    style: TextStyle(
                        color: Colors.blue
                    ),
                    //recognizer: _tapRecognizer
                ),
              ]
          )),
          //默认样式用于继承
          DefaultTextStyle(
            //1.设置文本默认样式
            style: TextStyle(
              color:Colors.red,
              fontSize: 20.0,
            ),
            textAlign: TextAlign.start,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text("hello world"),
                Text("I am Jack"),
                Text("I am Jack",
                  style: TextStyle(
                      inherit: false, //2.不继承默认样式
                      color: Colors.grey
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
  
}