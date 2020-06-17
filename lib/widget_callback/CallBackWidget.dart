import 'package:flutter/material.dart';

class CallBackWidget extends StatefulWidget {
  @override
  _CallBackWidgetState createState() => _CallBackWidgetState();
}

class _CallBackWidgetState extends State<CallBackWidget> {
  int _numberData = 0;

  void callBack(int data) {
    setState(() {
      _numberData = data;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text("widget callback",
                style: TextStyle(color: Color.fromARGB(255, 145, 200, 33)))),
        body: Container(
          padding: EdgeInsetsDirectional.only(top: 10),
          child: Column(
            children: <Widget>[
              Text(_numberData.toString(),
                  style: TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0), fontSize: 16)),
              RaisedButton(
                  onPressed: () {
                    setState(() {
                      _numberData++;
                    });
                  },
                  child: Text("add",
                      style: TextStyle(
                          color: Color.fromARGB(255, 0, 0, 0), fontSize: 16))),
              Divider(
                height: 10,
                color: Colors.red,
                thickness: 10,
              ),
              ChildWidget(_numberData, callBack)
            ],
          ),
        ));
  }
}

class ChildWidget extends StatefulWidget {
  final int _data;
  final Function callBack;

  ChildWidget(this._data, this.callBack);

  @override
  State<StatefulWidget> createState() => ChildState();
}

class ChildState extends State<ChildWidget> {

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 400,
        height: 200,
        alignment: Alignment.center,
        padding: EdgeInsetsDirectional.only(top: 10),
        child: Column(
          children: <Widget>[
            Text(widget._data.toString(),
                style: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0), fontSize: 16)),
            RaisedButton(
                onPressed: () {
                  int data = widget._data;
                  widget.callBack(++data);
                },
                child: Text("add",
                    style: TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0), fontSize: 16)))
          ],
        ));
  }
}
