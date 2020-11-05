import 'package:flutter/material.dart';
import 'package:flutter_app_demo/routes/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        // is not restarted.
        primarySwatch: Colors.amber,
      ),
      //initialRoute: "/", //注册首页路由,,
      routes: routes,
      onGenerateRoute: onGenerateRoute
    );
  }
}






