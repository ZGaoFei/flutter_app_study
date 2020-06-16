import 'package:flutter/material.dart';

class StatefulWidgetActive extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    print("==========createState=============");
    return new MyState();
  }
}

class MyState extends State {
  @override
  void initState() {
    super.initState();
    print("==========initState=============");
  }

  @override
  void didUpdateWidget(StatefulWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    print("==========didUpdateWidget=============");
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print("==========didChangeDependencies=============");
  }

  @override
  void reassemble() {
    super.reassemble();
    print("==========reassemble=============");
  }

  @override
  void deactivate() {
    super.deactivate();
    print("==========deactivate=============");
  }

  @override
  void dispose() {
    super.dispose();
    print("==========dispose=============");
  }

  @override
  Widget build(BuildContext context) {
    print("==========build=============");
    return Container(
      color: Colors.white,
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Stateful widget active",
                style: TextStyle(fontSize: 20, color: Colors.blue)),
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
            RaisedButton(
                child: Text("back stateful widget"),
                onPressed: () {
                  Navigator.pop(context);
                }),
          ],
        ),
    );
  }
}
