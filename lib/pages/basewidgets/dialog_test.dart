import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_demo/utils/widgets_ui/jk_dialog.dart';

class DialogRoute extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Center(
      child :Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:<Widget> [
          //参数设置：显示内容、显示时长、位置(距离底部距离，分10档)
          RaisedButton(
            onPressed: () {
              DialogUtil.jkSnackBar("显示提示框！",duration: 5,bottomDistance:2);
            },
            child: Text("snackBar(toast)"),
          ),
          //参数设置：标题、显示内容、是否带weidget注入,返回值得
          RaisedButton(
            onPressed: () async{
              bool result=await DialogUtil.jkAlertDialog("您确定要删除当前文件吗?");
              if (result == null) {
                DialogUtil.jkSnackBar("取消删除！");
              } else {
                DialogUtil.jkSnackBar("已确认删除！");
                //... 删除文件
              }
            },
            child: Text("AlertDialog"),
          ),
          RaisedButton(
            onPressed: () async{
              var i=await DialogUtil.jkSimpleDialog();
              if (i != null) {
                DialogUtil.jkSnackBar("选择了：${i == 1 ? "中文简体" : "美国英语"}");
              }
            },
            child: Text("SimpleDialog"),
          ),
          RaisedButton(
            onPressed: () async{
              var index=await DialogUtil.jkDialogWithWidget();
                if (index != null) {
                  DialogUtil.jkSnackBar("点击了：$index");
                }
            },
            child: Text("Dialog"),
          ),
          RaisedButton(
            child: Text("话框3（复选框可点击）"),
            onPressed: () async {
              //弹出删除确认对话框，等待用户确认
              bool deleteTree = await DialogUtil.jkDialogWithWidgetWithResult();
              if (deleteTree == null) {
                DialogUtil.jkSnackBar("取消删除");
              } else {
                DialogUtil.jkSnackBar("同时删除子目录: $deleteTree");
              }
            },
          ),
          RaisedButton(
            child: Text("显示底部菜单列表"),
            onPressed: () async {
              int type = await DialogUtil.jkDialogBottom();
              DialogUtil.jkSnackBar("$type");
            },
          ),
          RaisedButton(
            onPressed: () {
              DialogUtil.jkLoadingDialog();
            },
            child: Text("loading框"),
          ),

        ],
      )
    );
  }
}