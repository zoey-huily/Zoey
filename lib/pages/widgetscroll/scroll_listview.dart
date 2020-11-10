import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class ScrollListView extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("ListView"),
        centerTitle: true,
      ),
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
        body:ListView.builder(
            itemCount: 100,
            itemExtent: 50.0, //强制高度为50.0
            itemBuilder: (BuildContext context, int index) {
              return ListTile(title: Text("$index"));
            }
        )

    );
  }
}