
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_demo/pages/basewidgets/button.dart';
import 'package:flutter_app_demo/pages/basewidgets/checkbox.dart';
import 'package:flutter_app_demo/pages/basewidgets/form.dart';
import 'package:flutter_app_demo/pages/basewidgets/icon.dart';
import 'package:flutter_app_demo/pages/basewidgets/index.dart';
import 'package:flutter_app_demo/pages/basewidgets/picture.dart';
import 'package:flutter_app_demo/pages/basewidgets/progress.dart';
import 'package:flutter_app_demo/pages/basewidgets/snackbar.dart';
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
import 'package:flutter_app_demo/pages/widgetcontainer/container_EdgeInsets.dart';
import 'package:flutter_app_demo/pages/widgetcontainer/container_box_decorate.dart';
import 'package:flutter_app_demo/pages/widgetcontainer/container_box_limitsize.dart';
import 'package:flutter_app_demo/pages/widgetcontainer/container_clip.dart';
import 'package:flutter_app_demo/pages/widgetcontainer/container_container.dart';
import 'package:flutter_app_demo/pages/widgetcontainer/container_scaffold.dart';
import 'package:flutter_app_demo/pages/widgetcontainer/container_transform.dart';
import 'package:flutter_app_demo/pages/widgetcontainer/index.dart';
import 'package:flutter_app_demo/pages/widgetfunction/index.dart';
import 'package:flutter_app_demo/pages/widgetlayout/index.dart';
import 'package:flutter_app_demo/pages/widgetlayout/layout_align.dart';
import 'package:flutter_app_demo/pages/widgetlayout/layout_flex.dart';
import 'package:flutter_app_demo/pages/widgetlayout/layout_flow.dart';
import 'package:flutter_app_demo/pages/widgetlayout/layout_linear.dart';
import 'package:flutter_app_demo/pages/widgetlayout/layout_linear_column.dart';
import 'package:flutter_app_demo/pages/widgetlayout/layout_stack.dart';
import 'package:flutter_app_demo/pages/widgetscroll/index.dart';
import 'package:flutter_app_demo/pages/widgetscroll/scroll_custom.dart';
import 'package:flutter_app_demo/pages/widgetscroll/scroll_gridview.dart';
import 'package:flutter_app_demo/pages/widgetscroll/scroll_listen_control.dart';
import 'package:flutter_app_demo/pages/widgetscroll/scroll_listview.dart';
import 'package:flutter_app_demo/pages/widgetscroll/scroll_single_child.dart';

final routes= {
  "/": (context) => ListMenu(), //注册首页路由,
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
  "widget_layout_menu":(context)=>WidgetsLayoutMenu(),
  "widget_container_menu":(context)=>WidgetsContainerMenu(),
  "widget_scroll_menu":(context)=>WidgetsScrollMenu(),
  "widget_function_menu":(context)=>WidgetsFunctionMenu(),
  "text":(context)=>TextDemo(),
  "button":(context)=>ButtonDemo(),
  "picture":(context)=>PictureDemo(),
  "icon":(context)=>IconDemo(),
  "switch":(context)=>SwitchDemo(),
  "checkbox":(context)=>CheckBoxDemo(),
  "textfield":(context)=>TextFieldDemo(),
  "form":(context)=>FormDemo(),
  "progress":(context)=>ProgressDemo(),
  "layout_linear":(context)=>LayoutLinear(),
  "layout_linear_column":(context)=>LayoutLinearColumn(),
  "layout_flex":(context)=>LayoutFlex(),
  "layout_flow":(context)=>LayoutFlow(),
  "layout_stack":(context)=>LayoutStack(),
  "layout_align":(context)=>LayoutAlign(),
  "container_edgeinsets":(context)=>ContainerEdgeInsets(),
  "container_box_decorate":(context)=>ContainerBoxDecorate(),
  "container_box_limitsize":(context)=>ContainerBoxLimitSize(),
  "container_transform":(context)=>ContainerTransform(),
  "container_container":(context)=>ContainerContainer(),
  "container_scaffold":(context)=>ContainerScaffold(),
  "container_clip":(context)=>ContainerClip(),
  "scroll_custom":(context)=>ScrollCustom(),
  "scroll_gridview":(context)=>ScrollGridView(),
  "scroll_listen_control":(context)=>ScrollListenAndControl(),
  "scroll_listview":(context)=>ScrollListView(),
  "scroll_single_child":(context)=>ScrollSingleChild(),
  "snackbar":(context)=>SnackbarsDemo(),



};

var onGenerateRoute= (RouteSettings settings){
return MaterialPageRoute(builder: (context){
String routeName = settings.name;
});
};