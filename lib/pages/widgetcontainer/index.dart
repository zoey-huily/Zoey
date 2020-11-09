//容器组件列表


//容器菜单列表
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_demo/routes/routes.dart';

// BEGIN listDemo

class WidgetsContainerMenu extends StatelessWidget {
  //const ListDemo({Key key}) : super(key: key);
  WidgetsContainerMenu({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("容器组件列表"),
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
                  "填充（EdgeInsert）"
              ),
              onTap: () async{
                await Navigator.pushNamed(context, "container_edgeinsets");
              },
            ),
            ListTile(
              leading: ExcludeSemantics(
                child: CircleAvatar(child: Text('2')),
              ),
              title: Text(
                  "尺寸限制容器"
              ),
              onTap: (){
                Navigator.pushNamed(context, "container_box_limitsize");
              },
            ),
            ListTile(
              leading: ExcludeSemantics(
                child: CircleAvatar(child: Text('3')),
              ),
              title: Text(
                  "装饰容器"
              ),
              onTap: (){
                Navigator.pushNamed(context, "container_box_decorate");
              },
            ),
            ListTile(
              leading: ExcludeSemantics(
                child: CircleAvatar(child: Text('4')),
              ),
              title: Text(
                  "变换"
              ),
              onTap: (){
                Navigator.pushNamed(context, "container_transform");
              },
            ),
            ListTile(
              leading: ExcludeSemantics(
                child: CircleAvatar(child: Text('5')),
              ),
              title: Text(
                  "Container容器"
              ),
              onTap: (){
                Navigator.pushNamed(context, "container_container");
              },
            ),
            ListTile(
              leading: ExcludeSemantics(
                child: CircleAvatar(child: Text('6')),
              ),
              title: Text(
                  "Scaffold容器"
              ),
              onTap: (){
                Navigator.pushNamed(context, "container_scaffold");
              },
            ),
            ListTile(
              leading: ExcludeSemantics(
                child: CircleAvatar(child: Text('7')),
              ),
              title: Text(
                  "裁剪（Clip）"
              ),
              onTap: (){
                Navigator.pushNamed(context, "container_clip");
              },
            ),
          ],
        ),
      ),
    );
  }
}
