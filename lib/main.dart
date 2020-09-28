import 'package:flutter/material.dart';
import 'package:flutterappstudy/first_app/first_app_main.dart';
import 'package:flutterappstudy/future/future_test.dart';
import 'package:flutterappstudy/hero/hero_home.dart';
import 'package:flutterappstudy/hero/hero_two.dart';
import 'package:flutterappstudy/inheritedwidget/inherited_widget_home.dart';
import 'package:flutterappstudy/json_parse/json_parse_main.dart';
import 'package:flutterappstudy/state_manager/NullView.dart';
import 'package:flutterappstudy/widget_callback/CallBackWidget.dart';

import 'first_app/first_app_save.dart';
import 'home_page.dart';
import 'state_active/stateful_widget_active.dart';
import 'state_active/stateless_widget_active.dart';
import 'state_manager/StateManager.dart';
import 'state_manager/TabBoxA.dart';
import 'state_manager/TabBoxB.dart';
import 'state_manager/TabBoxC.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
      routes: {
        "state_manager": (context) => new StateManager(),
        "tab_box_a": (context) => new TabBoxA(),
        "tab_box_b": (context) => new ParentWidget(),
        "tab_box_c": (context) => new ParentWidgetC(),
        "null_view": (context) => new NullView(),
        "stateless_widget_active": (context) => new StatelessWidgetActive(),
        "stateful_widget_active": (context) => new StatefulWidgetActive(),
        "hero_page": (context) => new HeroHome(),
        "hero_two_page": (context) => new HeroTwo(),
        "inherited_widget_home": (context) => new InheritedWidgetHome(),
        "call_back_widget": (context) => new CallBackWidget(),
        "first_app": (context) => new FirstAppMain(),
        "json_parse": (context) => new JsonParseMain(),
        "future_test": (context) => new FutureTest(),
      },
    );
  }
}
