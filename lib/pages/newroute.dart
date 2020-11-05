//新的页面，用于实现跳转
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_demo/pages/radomwords_route.dart';
import 'file:///D:/workspace/flutter_app_demo/lib/pages/statemanager/state_life.dart';

class NewRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("New route"),
      ),
      body: Center(
        //child: Text("This is new route"),
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:<Widget>[
            RaisedButton(
              onPressed: () async {
                var result = await Navigator.pushNamed(context, "tiproute",arguments:{'text': "我是参数。。。。"});
                // 打开`TipRoute`，并等待返回结果
                // var result = await Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) {
                //       return TipRoute(
                //         // 路由参数
                //         text: "我是提示xxxx",
                //       );
                //     },
                //   ),
                // );
                //输出`TipRoute`路由返回结果
                print("路由返回值: $result");
              },
              child: Text("打开提示页"),
            ),
            RaisedButton(
              onPressed: (){
                var result = Navigator.pushNamed(context, "radomwords_route");
                print("路由返回值: $result");
              },
              child: Text("随机生成单词"),
            ),
            //生成的新单词
            RandomWordsWidget(),
             //state生命周期
            RaisedButton(
              onPressed: (){
                var result = Navigator.pushNamed(context, "statelife_route");
                print("路由返回值: $result");
              },
              child: Text("state生命周期"),
            ),
            //获取父类的state
            RaisedButton(
              onPressed: (){
                var result = Navigator.pushNamed(context, "get_father_state_route");
                print("路由返回值: $result");
              },
              child: Text("子树获取state对象"),
            ),

            RaisedButton(
              onPressed: (){
                var result = Navigator.pushNamed(context, "state_manager_own");
                print("路由返回值: $result");
              },
              child: Text("widget管理自身状态"),
            ),

            RaisedButton(
              onPressed: (){
                var result = Navigator.pushNamed(context, "state_manager_father");
                print("路由返回值: $result");
              },
              child: Text("widget管理子widget状态"),
            ),

            RaisedButton(
              onPressed: (){
                var result = Navigator.pushNamed(context, "state_manager_mixed");
                print("路由返回值: $result");
              },
              child: Text("混合状态管理"),
            ),
            RaisedButton(
              onPressed: (){
                var result = Navigator.pushNamed(context, "state_manager_mixed");
                print("路由返回值: $result");
              },
              child: Text("基础组件"),
            ),
          ],
        )
      ),

    );
  }
}