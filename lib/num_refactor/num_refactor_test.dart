import 'package:flutter/material.dart';

class NumRefactor extends StatefulWidget {
  @override
  _NumRefactorState createState() => _NumRefactorState();
}

class _NumRefactorState extends State<NumRefactor> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("测试数据格式化", style: TextStyle(fontSize: 16))),
      body: Container(
        child: Column(children: <Widget>[
//          _buildTextFiled(),
          _buildButton()
        ]),
      ),
    );
  }

  Widget _buildTextFiled() {
    return TextField(
      style: TextStyle(fontSize: 14, color: Colors.blue),
    );
  }

  Widget _buildButton() {
    return RaisedButton(
        child: Text("格式化数据"),
        onPressed: () {
          refactor();
        });
  }

  void refactor() {
    List a = [
      10000,
      11490,
      12540,
      12550,
      12560,
      12570,
      12580,
      12590,
      10590,
      10900,
      10950,
      10990,
      15900,
      15400,
      19500,
      19400,
      19900,
    ];

    a.forEach((value) {
      var result = (value / 10000).toStringAsFixed(2);
//      String str = result.toString();
//      List<String> split = str.split(".");
//      String r = split[1];

      print("=====result====" + value.toString() + " : " + result.toString());
    });
  }
}
