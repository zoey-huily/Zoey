//功能菜单列表
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_demo/routes/routes.dart';

// class ListMenu extends StatelessWidget {
//   ListMenu({Key key, this.title}) : super(key: key);
//   final String title;
//   @override
//   Widget build(BuildContext context) {
//     Widget divider1=Divider(color: Colors.blue,);
//     Widget divider2=Divider(color: Colors.green);
//     return Scaffold(
//       appBar: AppBar(
//         // Here we take the value from the MyHomePage object that was created by
//         // the App.build method, and use it to set our appbar title.
//         title: Text(title),
//         centerTitle: true,
//       ),
//       body: new ListDemo()
//     );
//   }
// }

// class ListView3 extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     //下划线widget预定义以供复用。
//     Widget divider1=Divider(color: Colors.blue,);
//     Widget divider2=Divider(color: Colors.green);
//     return ListView.separated(
//       itemCount: 20,
//       //列表项构造器
//       itemBuilder: (BuildContext context, int index) {
//         return ListTile(title: Text("$index"));
//       },
//       //分割器构造器
//       separatorBuilder: (BuildContext context, int index) {
//         return index%2==0?divider1:divider2;
//       },
//     );
//   }
// }







// BEGIN listDemo

class ListMenu extends StatelessWidget {
  //const ListDemo({Key key}) : super(key: key);
  ListMenu({Key key, this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("$title"),
        centerTitle: true,
      ),
      body: Scrollbar(
        child: ListView(
          padding: const EdgeInsets.symmetric(vertical: 8),
          children: [
              ListTile(
                leading: ExcludeSemantics(
                  child: CircleAvatar(child: Text('0')),
                ),
                title: Text(
                    "计数器demo"
                ),
                onTap: () {
                  Navigator.pushNamed(context, "count_demo");
                },
              ),
              ListTile(
                leading: ExcludeSemantics(
                  child: CircleAvatar(child: Text('1')),
                ),
                title: Text(
                    "路由传参，返回参数"
                ),
                onTap: () async{
                  var result = await Navigator.pushNamed(context, "tiproute",arguments:{'text': "我是参数。。。。"});
                  print("路由返回值: $result");
                },
              ),
              ListTile(
                leading: ExcludeSemantics(
                  child: CircleAvatar(child: Text('2')),
                ),
                title: Text(
                    "导入外部组件"
                ),
                onTap: (){
                  var result = Navigator.pushNamed(context, "radomwords_route");
                  print("路由返回值: $result");
                },
              ),
              ListTile(
                leading: ExcludeSemantics(
                  child: CircleAvatar(child: Text('3')),
                ),
                title: Text(
                    "state生命周期"
                ),
                onTap: (){
                  Navigator.pushNamed(context, "statelife_route");
                },
              ),
              ListTile(
                leading: ExcludeSemantics(
                  child: CircleAvatar(child: Text('4')),
                ),
                title: Text(
                    "子树获取state对象"
                ),
                onTap: (){
                  Navigator.pushNamed(context, "get_father_state_route");
                },
              ),
              ListTile(
                leading: ExcludeSemantics(
                  child: CircleAvatar(child: Text('5')),
                ),
                title: Text(
                    "widget管理自身状态"
                ),
                onTap: (){
                  Navigator.pushNamed(context, "state_manager_own");
                },
              ),
              ListTile(
                leading: ExcludeSemantics(
                  child: CircleAvatar(child: Text('6')),
                ),
                title: Text(
                    "widget管理子widget状态"
                ),
                onTap: (){
                  Navigator.pushNamed(context, "state_manager_father");
                },
              ),
            ListTile(
              leading: ExcludeSemantics(
                child: CircleAvatar(child: Text('7')),
              ),
              title: Text(
                  "widget混合状态管理"
              ),
              onTap: (){
                Navigator.pushNamed(context, "state_manager_mixed");
              },
            ),
            ListTile(
              leading: ExcludeSemantics(
                child: CircleAvatar(child: Text('8')),
              ),
              title: Text(
                  "打开提示页"
              ),
              onTap: (){
                Navigator.pushNamed(context, "get_father_state_route");
              },
            ),
            ListTile(
              leading: ExcludeSemantics(
                child: CircleAvatar(child: Text('9')),
              ),
              title: Text(
                  "打开提示页"
              ),
              onTap: (){
                Navigator.pushNamed(context, "get_father_state_route");
              },
            ),
            ListTile(
              leading: ExcludeSemantics(
                child: CircleAvatar(child: Text('10')),
              ),
              title: Text(
                  "打开提示页"
              ),
              onTap: (){
                Navigator.pushNamed(context, "get_father_state_route");
              },
            ),
            ListTile(
              leading: ExcludeSemantics(
                child: CircleAvatar(child: Text('11')),
              ),
              title: Text(
                  "打开提示页"
              ),
              onTap: (){
                Navigator.pushNamed(context, "get_father_state_route");
              },
            ),
            ListTile(
              leading: ExcludeSemantics(
                child: CircleAvatar(child: Text('12')),
              ),
              title: Text(
                  "打开提示页"
              ),
              onTap: (){
                Navigator.pushNamed(context, "get_father_state_route");
              },
            ),
          ],
        ),
      ),
    );
  }
}
