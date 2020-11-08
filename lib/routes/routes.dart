
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_demo/pages/basewidgets/button.dart';
import 'package:flutter_app_demo/pages/basewidgets/checkbox.dart';
import 'package:flutter_app_demo/pages/basewidgets/form.dart';
import 'package:flutter_app_demo/pages/basewidgets/icon.dart';
import 'package:flutter_app_demo/pages/basewidgets/index.dart';
import 'package:flutter_app_demo/pages/basewidgets/picture.dart';
import 'package:flutter_app_demo/pages/basewidgets/progress.dart';
import 'package:flutter_app_demo/pages/basewidgets/switch.dart';
import 'package:flutter_app_demo/pages/basewidgets/text.dart';
import 'package:flutter_app_demo/pages/basewidgets/textfield.dart';
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
  "widget_list_menu":(context)=>WidgetsListMenu(),
  "text":(context)=>TextDemo(),
  "button":(context)=>ButtonDemo(),
  "picture":(context)=>PictureDemo(),
  "icon":(context)=>IconDemo(),
  "switch":(context)=>SwitchDemo(),
  "checkbox":(context)=>CheckBoxDemo(),
  "textfield":(context)=>TextFieldDemo(),
  "form":(context)=>FormDemo(),
  "progress":(context)=>ProgressDemo()


};

var onGenerateRoute= (RouteSettings settings){
return MaterialPageRoute(builder: (context){
String routeName = settings.name;
});
};