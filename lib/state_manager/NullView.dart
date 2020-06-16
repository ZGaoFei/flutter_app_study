import 'package:flutter/material.dart';

class NullView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new state();
}

class state extends State {
  bool isShow = false;

  void show() {
    this.setState(() {
      isShow = !isShow;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Container(
        child: new Column(
      children: <Widget>[
        RaisedButton(
          child: Text("click to hiden or show!"),
          onPressed: () {
            print("==========isShow===========");
            show();
          },
        ),
        new Container(
          child: isShow
              ? new Text("show")
              : new RaisedButton(child: Text("button"), onPressed: null),
        )
      ],
    ));
  }
}
