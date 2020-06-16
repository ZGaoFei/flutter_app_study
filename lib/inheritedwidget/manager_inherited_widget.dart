import 'package:flutter/material.dart';

class ManagerInheritedWidget extends InheritedWidget {
  final int data;

  const ManagerInheritedWidget(this.data, Widget child)
      : super(child: child);

  static ManagerInheritedWidget of(BuildContext context) {
    return context.inheritFromWidgetOfExactType(ManagerInheritedWidget);
  }

  @override
  bool updateShouldNotify(ManagerInheritedWidget oldWidget) {
    return data != oldWidget.data;
  }
}
