import 'package:flutter/material.dart';

class StatelessWidgetActive extends StatelessWidget {
  @override
  StatelessElement createElement() {
    print("==========createElement=============");
    return super.createElement();
  }

  @override
  Widget build(BuildContext context) {
    print("==========build=============");
    return SafeArea(
      child: Container(
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Stateless widget active",
                style: TextStyle(fontSize: 20, color: Colors.red)),
            RaisedButton(
                child: Text("open Stateless widget page"),
                onPressed: () {
                  Navigator.pushNamed(context, "statelessWidgetActive");
                }),
            RaisedButton(
                child: Text("open Stateful widget page"),
                onPressed: () {
                  Navigator.pushNamed(context, "statefulWidgetActive");
                }),
          ],
        ),
      ),
    );
  }
}
