import 'package:flutter/material.dart';

class StateManager extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("状态管理"),
      ),
      body: Center(
        child: Column(
//          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
                child: Text("state 自我管理"),
                onPressed: () {
                  Navigator.of(context).pushNamed("tab_box_a");
                }),
            RaisedButton(
                child: Text("state 父类管理"),
                onPressed: () {
                  Navigator.of(context).pushNamed("tab_box_b");
                }),
            RaisedButton(
                child: Text("state 混合管理"),
                onPressed: () {
                  Navigator.of(context).pushNamed("tab_box_c");
                }),
            RaisedButton(
                child: Text("state 不设置参数测试"),
                onPressed: () {
                  Navigator.of(context).pushNamed("state_test");
                }),
          ],
        ),
      ),
    );
  }
}
