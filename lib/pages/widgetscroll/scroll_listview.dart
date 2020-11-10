import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class ScrollListView extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    //下划线widget预定义以供复用。
    Widget divider1=Divider(color: Colors.blue,);
    Widget divider2=Divider(color: Colors.green);
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("ListView"),
        centerTitle: true,
      ),
      //1.普通listView
      // body: ListView(
      //   shrinkWrap: true,
      //   padding: const EdgeInsets.all(20.0),
      //   children: <Widget>[
      //     const Text('I\'m dedicating every day to you'),
      //     const Text('Domestic life was never quite my style'),
      //     const Text('When you smile, you knock me out, I fall apart'),
      //     const Text('And I thought I was so smart'),
      //   ],
      // )
      //2.listView.bulider
      //   body:ListView.builder(
      //       itemCount: 100,
      //       itemExtent: 50.0, //强制高度为50.0
      //       itemBuilder: (BuildContext context, int index) {
      //         return ListTile(title: Text("$index"));
      //       }
      //   )
      //3.listView.separated
      // body:ListView.separated(
      //   itemCount: 100,
      //   //列表项构造器
      //   itemBuilder: (BuildContext context, int index) {
      //     return ListTile(title: Text("$index"));
      //   },
      //   //分割器构造器
      //   separatorBuilder: (BuildContext context, int index) {
      //   return index%2==0?divider1:divider2;
      //   },
      //   )
      //4.无限加载列表
      body:Column(children: <Widget>[
        ListTile(title:Text("商品列表")),
        Expanded(
          child: ListView.builder(itemBuilder: (BuildContext context, int index) {
            return ListTile(title: Text("$index"));
          }),
        ),
      ])
    );
  }
}