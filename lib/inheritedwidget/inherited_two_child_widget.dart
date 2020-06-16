import 'package:flutter/material.dart';
import 'package:flutterappstudy/inheritedwidget/manager_inherited_widget.dart';

class InheritedTwoChildWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var userTitle = ManagerInheritedWidget.of(context).userTitle;

    return Container(
      child:
          Text(userTitle, style: TextStyle(color: Colors.blue, fontSize: 18)),
    );
  }
}
