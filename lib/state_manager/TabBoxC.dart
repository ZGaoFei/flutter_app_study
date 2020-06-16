import 'package:flutter/material.dart';

class ParentWidgetC extends StatefulWidget {
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
      child: new TabBoxC(active: active, changed: changeActive),
    );
  }
}

class TabBoxC extends StatefulWidget {
  TabBoxC({Key key, this.active, @required this.changed}) : super(key: key);

  final bool active;
  final ValueChanged<bool> changed;

  void change() {
    changed(!active);
  }

  @override
  State<StatefulWidget> createState() => new TabBoxState();
}

class TabBoxState extends State<TabBoxC> {
  bool heightLight = false;

  void _handleTapDown(TapDownDetails details) {
    setState(() {
      heightLight = true;
    });
  }

  void _handleTapUp(TapUpDetails details) {
    setState(() {
      heightLight = false;
    });
  }

  void _handleTapCancel() {
    setState(() {
      heightLight = false;
    });
  }

  void handleTap() {
    widget.change();
  }

  @override
  Widget build(BuildContext context) {
    return new GestureDetector(
      onTap: handleTap,
      onTapDown: _handleTapDown,
      onTapUp: _handleTapUp,
      onTapCancel: _handleTapCancel,
      child: Container(
        width: 200.0,
        height: 200.0,
        decoration: BoxDecoration(
            color: widget.active ? Colors.lightGreen[700] : Colors.grey[600],
            border: heightLight
                ? new Border.all(
                    color: Colors.teal[700],
                    width: 10.0,
                  )
                : null),
        child: Center(
          child: Text(widget.active ? "Active" : "Inactive",
              style: TextStyle(fontSize: 32, color: Colors.white)),
        ),
      ),
    );
  }
}
