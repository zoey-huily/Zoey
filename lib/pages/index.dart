//功能菜单列表
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_demo/routes/routes.dart';

class ListMenu extends StatefulWidget {
  @override
  WillPopScopeTestRouteState createState() {
    return new WillPopScopeTestRouteState();
  }
}

class WillPopScopeTestRouteState extends State<ListMenu> {
  DateTime _lastPressedAt; //上次点击时间

  @override
  Widget build(BuildContext context) {
    return new WillPopScope(
        onWillPop: () async {
          if (_lastPressedAt == null ||
              DateTime.now().difference(_lastPressedAt) > Duration(seconds: 1)) {
            //两次点击间隔超过1秒则重新计时
            _lastPressedAt = DateTime.now();
            ScaffoldMessenger.of(context).hideCurrentSnackBar();
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content:Text("再按一次退出近课",textAlign: TextAlign.center),
                duration: Duration(seconds: 1),
                behavior: SnackBarBehavior.floating,
                width: MediaQuery.of(context).size.width*0.5,
                //margin: EdgeInsets.only(top: 50.0, left: 120.0),
              )
            );
            return false;
          }
          return true;
        },
        child: MenuView()
    );
  }
}



// BEGIN listDemo

class MenuView extends StatelessWidget {
  //const ListDemo({Key key}) : super(key: key);
  MenuView({Key key, this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("首页导航"),
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
                  "基础组件"
              ),
              onTap: (){
                Navigator.pushNamed(context, "widget_list_menu");
              },
            ),
            ListTile(
              leading: ExcludeSemantics(
                child: CircleAvatar(child: Text('9')),
              ),
              title: Text(
                  "布局组件"
              ),
              onTap: (){
                Navigator.pushNamed(context, "widget_layout_menu");
              },
            ),
            ListTile(
              leading: ExcludeSemantics(
                child: CircleAvatar(child: Text('10')),
              ),
              title: Text(
                  "容器组件"
              ),
              onTap: (){
                Navigator.pushNamed(context, "widget_container_menu");
              },
            ),
            ListTile(
              leading: ExcludeSemantics(
                child: CircleAvatar(child: Text('11')),
              ),
              title: Text(
                  "滚动组件"
              ),
              onTap: (){
                Navigator.pushNamed(context, "widget_scroll_menu");
              },
            ),
            ListTile(
              leading: ExcludeSemantics(
                child: CircleAvatar(child: Text('12')),
              ),
              title: Text(
                  "功能组件"
              ),
              onTap: (){
                Navigator.pushNamed(context, "widget_function_menu");
              },
            ),
          ],
        ),
      ),
    );
  }
}
