import 'package:flutter/material.dart';

class TabBoxA extends StatefulWidget {
  TabBoxA({Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return AState();
  }
}

class AState extends State<TabBoxA> {
  bool active = false;

  void handlerTap() {
    this.setState(() {
      active = !active;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new GestureDetector(
      onTap: handlerTap,
      child: Container(
        width: 200.0,
        height: 200.0,
        decoration: BoxDecoration(
          color: active ? Colors.lightGreen[700] : Colors.grey[600],
        ),
        child: Center(
          child: Text(active ? "Active" : "Inactive",
              style: TextStyle(fontSize: 32, color: Colors.white)),
        ),
      ),
    );
  }
}
