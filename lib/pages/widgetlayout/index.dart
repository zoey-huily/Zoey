//布局组件列表


//布局菜单列表
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_demo/routes/routes.dart';

// BEGIN listDemo

class WidgetsLayoutMenu extends StatelessWidget {
  //const ListDemo({Key key}) : super(key: key);
  WidgetsLayoutMenu({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("布局组件列表"),
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
                  "线性布局"
              ),
              onTap: () async{
                await Navigator.pushNamed(context, "layout_linear");
              },
            ),
            ListTile(
              leading: ExcludeSemantics(
                child: CircleAvatar(child: Text('2')),
              ),
              title: Text(
                  "弹性布局"
              ),
              onTap: (){
                Navigator.pushNamed(context, "layout_flex");
              },
            ),
            ListTile(
              leading: ExcludeSemantics(
                child: CircleAvatar(child: Text('3')),
              ),
              title: Text(
                  "流式布局"
              ),
              onTap: (){
                Navigator.pushNamed(context, "layout_flow");
              },
            ),
            ListTile(
              leading: ExcludeSemantics(
                child: CircleAvatar(child: Text('4')),
              ),
              title: Text(
                  "层叠布局"
              ),
              onTap: (){
                Navigator.pushNamed(context, "layout_stack");
              },
            ),
            ListTile(
              leading: ExcludeSemantics(
                child: CircleAvatar(child: Text('5')),
              ),
              title: Text(
                  "对齐与相对定位"
              ),
              onTap: (){
                Navigator.pushNamed(context, "layout_align");
              },
            ),
          ],
        ),
      ),
    );
  }
}
