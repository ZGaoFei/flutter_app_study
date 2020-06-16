import 'package:flutter/material.dart';
import 'package:flutterappstudy/inheritedwidget/manager_inherited_widget.dart';

class InheritedTwoChildWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var data = ManagerInheritedWidget.of(context).data;

    return Container(
      child:
          Text(data.toString(), style: TextStyle(color: Colors.blue, fontSize: 18)),
    );
  }
}
