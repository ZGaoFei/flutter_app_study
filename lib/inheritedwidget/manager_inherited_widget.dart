import 'package:flutter/material.dart';

class ManagerInheritedWidget extends InheritedWidget {
  final String userTitle;

  const ManagerInheritedWidget(this.userTitle, Widget child)
      : super(child: child);

  static ManagerInheritedWidget of(BuildContext context) {
    return context.inheritFromWidgetOfExactType(ManagerInheritedWidget);
  }

  @override
  bool updateShouldNotify(ManagerInheritedWidget oldWidget) {
    return userTitle != oldWidget.userTitle;
  }
}
