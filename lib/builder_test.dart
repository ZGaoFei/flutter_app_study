import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BuilderTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Material(
        child: Container(
          color: Colors.white,
          child: Column(
            children: <Widget>[
              _createNav(context),
              Builder(builder: (context) => _builder(context)),
            ],
          ),
        ),
      ),
    );
  }

  /// 创建一个通用的头部布局
  Widget _createNav(context) {
    return Container(
      color: Colors.blue,
      height: 50,
      alignment: Alignment.centerLeft,
      child: Stack(
        children: <Widget>[
          GestureDetector(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Container(
                padding: EdgeInsets.only(left: 20),
                alignment: Alignment.centerLeft,
                child: Icon(Icons.keyboard_arrow_left,
                    color: Colors.white, size: 25)),
          ),
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.only(left: 45, right: 45),
            child: Text(
              "Builder test",
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }

  Widget _builder(context) {
    return Text("create builder",
        style: TextStyle(color: Colors.blue, fontSize: 15));
  }
}
