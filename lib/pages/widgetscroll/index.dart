//滚动组件列表


//滚动菜单列表
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_demo/routes/routes.dart';

// BEGIN listDemo

class WidgetsScrollMenu extends StatelessWidget {
  //const ListDemo({Key key}) : super(key: key);
  WidgetsScrollMenu({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("滚动组件列表"),
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
                  "SingleChildScrollView"
              ),
              onTap: () async{
                await Navigator.pushNamed(context, "scroll_single_child");
              },
            ),
            ListTile(
              leading: ExcludeSemantics(
                child: CircleAvatar(child: Text('2')),
              ),
              title: Text(
                  "ListView"
              ),
              onTap: (){
                Navigator.pushNamed(context, "scroll_listview");
              },
            ),
            ListTile(
              leading: ExcludeSemantics(
                child: CircleAvatar(child: Text('3')),
              ),
              title: Text(
                  "GridView"
              ),
              onTap: (){
                Navigator.pushNamed(context, "scroll_gridview");
              },
            ),
            ListTile(
              leading: ExcludeSemantics(
                child: CircleAvatar(child: Text('4')),
              ),
              title: Text(
                  "CustomScrollView"
              ),
              onTap: (){
                Navigator.pushNamed(context, "scroll_custom");
              },
            ),
            ListTile(
              leading: ExcludeSemantics(
                child: CircleAvatar(child: Text('5')),
              ),
              title: Text(
                  "滚动监听及控制"
              ),
              onTap: (){
                Navigator.pushNamed(context, "scroll_listen_control");
              },
            ),
          ],
        ),
      ),
    );
  }
}
