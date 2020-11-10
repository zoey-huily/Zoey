//基础组件列表


//功能菜单列表
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_demo/routes/routes.dart';

// BEGIN listDemo

class WidgetsListMenu extends StatelessWidget {
  //const ListDemo({Key key}) : super(key: key);
  WidgetsListMenu({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("基础组件列表"),
        centerTitle: true,
      ),
      body: Scrollbar(
        child: ListView(
          padding: const EdgeInsets.symmetric(vertical: 8),
          children: [
            ListTile(
              leading: ExcludeSemantics(
                child: CircleAvatar(child: Text('1')),
              ),
              title: Text(
                  "文本字体样式"
              ),
              onTap: () async{
                await Navigator.pushNamed(context, "text");
              },
            ),
            ListTile(
              leading: ExcludeSemantics(
                child: CircleAvatar(child: Text('2')),
              ),
              title: Text(
                  "按钮"
              ),
              onTap: (){
                Navigator.pushNamed(context, "button");
              },
            ),
            ListTile(
              leading: ExcludeSemantics(
                child: CircleAvatar(child: Text('3')),
              ),
              title: Text(
                  "图片"
              ),
              onTap: (){
                Navigator.pushNamed(context, "picture");
              },
            ),
            ListTile(
              leading: ExcludeSemantics(
                child: CircleAvatar(child: Text('4')),
              ),
              title: Text(
                  "icon"
              ),
              onTap: (){
                Navigator.pushNamed(context, "icon");
              },
            ),
            ListTile(
              leading: ExcludeSemantics(
                child: CircleAvatar(child: Text('5')),
              ),
              title: Text(
                  "单选框"
              ),
              onTap: (){
                Navigator.pushNamed(context, "switch");
              },
            ),
            ListTile(
              leading: ExcludeSemantics(
                child: CircleAvatar(child: Text('6')),
              ),
              title: Text(
                  "复选框"
              ),
              onTap: (){
                Navigator.pushNamed(context, "checkbox");
              },
            ),
            ListTile(
              leading: ExcludeSemantics(
                child: CircleAvatar(child: Text('7')),
              ),
              title: Text(
                  "输入框"
              ),
              onTap: (){
                Navigator.pushNamed(context, "textfield");
              },
            ),
            ListTile(
              leading: ExcludeSemantics(
                child: CircleAvatar(child: Text('8')),
              ),
              title: Text(
                  "表单"
              ),
              onTap: (){
                Navigator.pushNamed(context, "form");
              },
            ),
            ListTile(
              leading: ExcludeSemantics(
                child: CircleAvatar(child: Text('9')),
              ),
              title: Text(
                  "进度条"
              ),
              onTap: (){
                Navigator.pushNamed(context, "progress");
              },
            ),
            ListTile(
              leading: ExcludeSemantics(
                child: CircleAvatar(child: Text('9')),
              ),
              title: Text(
                  "提示框"
              ),
              onTap: (){
                Navigator.pushNamed(context, "snackbar");
              },
            ),
          ],
        ),
      ),
    );
  }
}
