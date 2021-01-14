import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutterappstudy/tab_bar/tab_bar_home.dart';
import 'package:flutterappstudy/tab_bar/tab_bar_second_page.dart';

class TabBarTest extends StatefulWidget {
  @override
  _TabBarTestState createState() => _TabBarTestState();
}

class _TabBarTestState extends State<TabBarTest> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Tab Bar",
      theme: ThemeData(
        primaryColor: Colors.white,
        platform: TargetPlatform.iOS,
      ),
      home: TabBarHomePage(),
      routes: {
        "tab_bar_second": (context)=> new TabBarSecondPage(),
      },
    );
  }
}
