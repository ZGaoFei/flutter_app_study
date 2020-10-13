import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


final String title = "hello world！";
final String title2 = "你好世界!";

class StateTest extends StatefulWidget {
  @override
  _StateTestState createState() => _StateTestState();
}

class _StateTestState extends State<StateTest> {
  String str = title;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print("====initState====");
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    print("====didChangeDependencies====");
  }

  @override
  void didUpdateWidget(StateTest oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
    print("====didUpdateWidget====");
  }

  @override
  Widget build(BuildContext context) {
    print("====build====");

    return Container(
      child: Column(
        children: <Widget>[
          Text(
            str,
            style: TextStyle(fontSize: 16, color: Colors.blue),
          ),
          RaisedButton(
            onPressed: () {
//              str = title2;
              setState(() {
                str = title2;
              });
            },
            child: Text(
              "click",
              style: TextStyle(fontSize: 16, color: Colors.red),
            ),
          )
        ],
      ),
    );
  }
}
