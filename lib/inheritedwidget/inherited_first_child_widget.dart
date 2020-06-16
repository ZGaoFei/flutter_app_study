import 'package:flutter/material.dart';
import 'package:flutterappstudy/inheritedwidget/inherited_two_child_widget.dart';
import 'package:flutterappstudy/inheritedwidget/manager_inherited_widget.dart';

class InheritedFirstChildWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var userTitle = ManagerInheritedWidget.of(context).userTitle;

    return Scaffold(
        appBar: AppBar(title: Text("Inherited first child widget")),
        body: Container(
          child: Column(
            children: <Widget>[
              Text(userTitle,
                  style: TextStyle(fontSize: 16, color: Colors.red)),
              InheritedTwoChildWidget(),
            ],
          ),
        ));
  }
}
