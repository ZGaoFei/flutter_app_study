import 'package:flutter/material.dart';

class ParentWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new ParentState();
}

class ParentState extends State {
  bool active = false;

  void changeActive(newValue) {
    this.setState(() {
      active = newValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new TapBoxB(active: active, changed: changeActive),
    );
  }

}

class TapBoxB extends StatelessWidget {

  TapBoxB({Key key, this.active, @required this.changed}) : super(key: key);

  final bool active;
  final ValueChanged<bool> changed;

  void handlerTap() {
    changed(!active);
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