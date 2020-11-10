import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class ScrollGridView extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("装饰容器"),
        centerTitle: true,
      ),
      // body:GridView.count(
      //   crossAxisCount: 3,
      //   childAspectRatio: 1.0,
      //   children: <Widget>[
      //     Icon(Icons.ac_unit),
      //     Icon(Icons.airport_shuttle),
      //     Icon(Icons.all_inclusive),
      //     Icon(Icons.beach_access),
      //     Icon(Icons.cake),
      //     Icon(Icons.free_breakfast),
      //   ],
      // )
      body:GridView.extent(
        maxCrossAxisExtent: 120.0,
        childAspectRatio: 2.0,
        children: <Widget>[
          Icon(Icons.ac_unit),
          Icon(Icons.airport_shuttle),
          Icon(Icons.all_inclusive),
          Icon(Icons.beach_access),
          Icon(Icons.cake),
          Icon(Icons.free_breakfast),
        ],
      )

    );
  }
}