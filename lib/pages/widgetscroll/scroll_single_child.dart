import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class ScrollSingleChild extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    String str = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
    return Scrollbar( // 显示进度条
      child: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            //动态创建一个List<Widget>
            children: str.split("")
            //每一个字母都用一个Text显示,字体为原来的两倍
                .map((c) => Text(c, textScaleFactor: 2.0,))
                .toList(),
          ),
        ),
      ),
    );
    // return Scaffold(
    //   appBar: AppBar(
    //     automaticallyImplyLeading: false,
    //     title: Text("SingleChildScrollView"),
    //     centerTitle: true,
    //   ),
    //   body: Column(
    //     children: <Widget>[
    //         Scrollbar( // 显示进度条
    //           child: SingleChildScrollView(
    //           padding: EdgeInsets.all(16.0),
    //           child: Center(
    //             child: Column(
    //               //动态创建一个List<Widget>
    //               children: str.split("")
    //               //每一个字母都用一个Text显示,字体为原来的两倍
    //                   .map((c) => Text(c, textScaleFactor: 2.0,))
    //                   .toList(),
    //             ),
    //           ),
    //         ),
    //       )
    //     ],
    //   )
    //
    // );
  }
}