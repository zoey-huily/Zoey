
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_demo/pages/count_demo.dart';
import 'package:flutter_app_demo/pages/get_father_state.dart';
import 'package:flutter_app_demo/pages/index.dart';
import 'package:flutter_app_demo/pages/newroute.dart';
import 'package:flutter_app_demo/pages/radomwords_route.dart';
import 'package:flutter_app_demo/pages/statemanager/state_life_index.dart';
import 'package:flutter_app_demo/pages/statemanager/state_manager_father.dart';
import 'package:flutter_app_demo/pages/statemanager/state_manager_mixed.dart';
import 'package:flutter_app_demo/pages/statemanager/state_manager_own.dart';
import 'package:flutter_app_demo/pages/tiproute.dart';

final routes= {
"/": (context) => ListMenu(title: '功能菜单'), //注册首页路由,
"count_demo":(context)=>CountDemo(),
"tiproute":(context)=>TipRoute(),
"newroute":(context)=>NewRoute(),
"radomwords_route":(context)=>RandomWordsWidget(),
"statelife_route":(context)=>StateLife(),
"get_father_state_route":(context)=>GetFatherState(),
"state_manager_own":(context)=>TapboxA(),
"state_manager_father":(context)=>ParentWidget(),
"state_manager_mixed":(context)=>ParentWidgetC(),
};

var onGenerateRoute= (RouteSettings settings){
return MaterialPageRoute(builder: (context){
String routeName = settings.name;
});
};