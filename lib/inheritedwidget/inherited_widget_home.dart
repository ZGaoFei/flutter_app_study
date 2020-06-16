import 'package:flutter/material.dart';
import 'package:flutterappstudy/inheritedwidget/inherited_first_child_widget.dart';
import 'package:flutterappstudy/inheritedwidget/manager_inherited_widget.dart';

class InheritedWidgetHome extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => InheritedWidgetState();
}

class InheritedWidgetState extends State<InheritedWidgetHome> {
  int data = 0;

  @override
  Widget build(BuildContext context) {
    return ManagerInheritedWidget(data, createChildWidget());
  }

  Widget createChildWidget() {
    return Scaffold(
        appBar: AppBar(title: Text("Inherited first child widget")),
        body: Container(child: InheritedFirstChildWidget()),
        floatingActionButton: FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: () {
              setState(() {
                ++data;
              });
            }));
  }
}
