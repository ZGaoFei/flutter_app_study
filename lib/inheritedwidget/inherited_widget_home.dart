import 'package:flutter/material.dart';
import 'package:flutterappstudy/inheritedwidget/inherited_first_child_widget.dart';
import 'package:flutterappstudy/inheritedwidget/manager_inherited_widget.dart';

class InheritedWidgetHome extends StatelessWidget {
  static final String _string = "hello world!";

  @override
  Widget build(BuildContext context) {
    return ManagerInheritedWidget(_string, InheritedFirstChildWidget());
  }
}
