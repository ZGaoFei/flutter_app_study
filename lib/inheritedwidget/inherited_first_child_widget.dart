import 'package:flutter/material.dart';
import 'package:flutterappstudy/inheritedwidget/inherited_two_child_widget.dart';
import 'package:flutterappstudy/inheritedwidget/manager_inherited_widget.dart';

class InheritedFirstChildWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var data = ManagerInheritedWidget.of(context).data;

    return Container(
      margin: EdgeInsetsDirectional.only(top: 20),
      alignment: Alignment.center,
      child: Column(
        children: <Widget>[
          Text(data.toString(),
              style: TextStyle(fontSize: 16, color: Colors.red)),
          InheritedTwoChildWidget(),
        ],
      ),
    );
  }
}
