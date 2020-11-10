// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

class SnackbarsDemo extends StatelessWidget {
  const SnackbarsDemo();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("提示信息显示"),
      ),
      body: Builder(
        // Create an inner BuildContext so that the snackBar onPressed methods
        // can refer to the Scaffold with Scaffold.of().
        builder: (context) {
          return Center(
            child: RaisedButton(
              child: Text(
                  "提示内容1"),
              onPressed: () {
                ScaffoldMessenger.of(context).hideCurrentSnackBar();
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text(
                    "提示内容2",
                  ),
                  padding: EdgeInsets.all(51),
                  action: SnackBarAction(
                    label: "操作",
                    onPressed: () {
                      ScaffoldMessenger.of(context).hideCurrentSnackBar();
                      ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content:Text("再按一次退出近课"),
                            duration: Duration(seconds: 1),
                            behavior: SnackBarBehavior.floating,
                            //width: 50,
                            margin: EdgeInsets.only(top: 50.0, left: 120.0),
                          )
                      );
                    },
                  ),
                ));
              },
            ),
          );
        },
      ),
    );
  }
}