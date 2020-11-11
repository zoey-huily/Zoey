import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../nav_key.dart';

//定义各种自定义弹出框
class DialogUtil{
  static BuildContext context=NavKey.navKey.currentContext;
  //普通提示框
  static jkSnackBar(String content,{int duration, bottomDistance=2}) async{
    double distance=20;
    var totalHeight=MediaQuery.of(context).size.height;
    List<int> l1 = [1,2,3,4,5,6,7,8,9,10];
    bool a = l1.any((e) => e==bottomDistance);
    if(!a){
      bottomDistance=2;
    }
    distance=totalHeight*0.4*(bottomDistance/10);
    print("distance::$distance");
    //var context=NavKey.navKey.currentContext;
    ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content:Text("$content",textAlign: TextAlign.center),
          //duration: duration==null ? Duration(seconds: duration):Duration(seconds: 1),
          duration: Duration(seconds: duration==null?1:duration),
          behavior: SnackBarBehavior.floating,
          //width: MediaQuery.of(context).size.width*0.5,
          margin: EdgeInsets.symmetric(vertical: distance,horizontal: MediaQuery.of(context).size.width*0.2) //EdgeInsets.only({left:50.0,right:50.0 ,bottom:50.0}),
        )
    );
  }

  //等待提示框

  //1.弹窗（AlertDialog）
  static Future<bool> jkAlertDialog(String content,{String title}) {
    return showDialog<bool>(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text("提示"),
          content: Text("$content"),
          actions: <Widget>[
            FlatButton(
              child: Text("取消"),
              onPressed: () => Navigator.of(context).pop(), // 关闭对话框
            ),
            FlatButton(
              child: Text("删除"),
              onPressed: () {
                //关闭对话框并返回true
                Navigator.of(context).pop(true);
              },
            ),
          ],
        );
      },
    );
  }
  //2.弹窗（SimpleDialog）
  static Future<int> jkSimpleDialog() async {
    return await showDialog<int>(
        context: context,
        builder: (BuildContext context) {
          return SimpleDialog(
            title: const Text('请选择语言'),
            children: <Widget>[
              SimpleDialogOption(
                onPressed: () {
                  // 返回1
                  Navigator.pop(context, 1);
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 6),
                  child: const Text('中文简体'),
                ),
              ),
              SimpleDialogOption(
                onPressed: () {
                  // 返回2
                  Navigator.pop(context, 2);
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 6),
                  child: const Text('美国英语'),
                ),
              ),
            ],
          );
        }
    );
  }
    //3.弹窗（Dialog）包含子组件，特别式包含延迟加载模型的组件
  static Future<int> jkDialogWithWidget() async {
    return await showDialog<int>(
      context: context,
      builder: (BuildContext context) {
        var child = Column(
          children: <Widget>[
            ListTile(title: Text("请选择")),
            Expanded(
                child: ListView.builder(
                  itemCount: 30,
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                      title: Text("$index"),
                      onTap: () => Navigator.of(context).pop(index),
                    );
                  },
                )),
          ],
        );
        //使用AlertDialog会报错
        //return AlertDialog(content: child);
        return Dialog(child: child);
      },
    );
  }
  //4.弹窗(子组件包含子组件返回结果)
  //在不需要单独抽离组件的情况下创建一个StatefulWidget的上下文
  static Future<bool> jkDialogWithWidgetWithResult() {
    bool _withTree = false; //记录复选框是否选中
    return showDialog<bool>(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text("提示"),
          content: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text("您确定要删除当前文件吗?"),
              Row(
                children: <Widget>[
                  Text("同时删除子目录？"),
                  //1.用StatefulBuilder来setState
                  // StatefulBuilder(
                  //   builder: (context,_setState){
                  //     return Checkbox(
                  //       value: _withTree, //默认不选中
                  //       onChanged: (bool value) {
                  //         //_setState方法实际就是该StatefulWidget的setState方法，
                  //         //调用后builder方法会重新被调用
                  //         _setState(() {
                  //           //更新选中状态
                  //           _withTree = !_withTree;
                  //         });
                  //       },
                  //     );
                  //   }
                  // )
                  //2.直接定位修改的widget,标记为dirty
                  Builder(
                    builder: (BuildContext context) {
                      return Checkbox(
                        value: _withTree,
                        onChanged: (bool value) {
                          (context as Element).markNeedsBuild();
                          _withTree = !_withTree;
                        },
                      );
                    },
                  ),
                ],
              ),
            ],
          ),
          actions: <Widget>[
            FlatButton(
              child: Text("取消"),
              onPressed: () => Navigator.of(context).pop(),
            ),
            FlatButton(
              child: Text("删除"),
              onPressed: () {
                // 将选中状态返回
                Navigator.of(context).pop(_withTree);
              },
            ),
          ],
        );
      },
    );
  }

  static Future<int> jkDialogBottom() {
    return showModalBottomSheet<int>(
      context: context,
      builder: (BuildContext context) {
        return ListView.builder(
          itemCount: 30,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              title: Text("$index"),
              onTap: () => Navigator.of(context).pop(index),
            );
          },
        );
      },
    );
  }


  static jkLoadingDialog() {
    showDialog(
      context: context,
      barrierDismissible: false, //点击遮罩不关闭对话框
      builder: (context) {
        return UnconstrainedBox(
          constrainedAxis: Axis.vertical,
          child: SizedBox(
            width: 280,
            child: AlertDialog(
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  //CircularProgressIndicator(value: 0.5),//value表示进度
                  CircularProgressIndicator(),
                  Padding(
                    padding: const EdgeInsets.only(top: 26.0),
                    child: Text("正在加载，请稍后..."),
                  )
                ],
              ),
            ),
          ),
        );

        // return AlertDialog(
        //   content: Column(
        //     mainAxisSize: MainAxisSize.min,
        //     children: <Widget>[
        //       CircularProgressIndicator(),
        //       Padding(
        //         padding: const EdgeInsets.only(top: 26.0),
        //         child: Text("正在加载，请稍后..."),
        //       )
        //     ],
        //   ),
        // );
      },
    );
  }





}