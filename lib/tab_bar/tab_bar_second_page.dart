import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TabBarSecondPage extends StatefulWidget {
  @override
  _TabBarSecondPageState createState() => _TabBarSecondPageState();
}

class _TabBarSecondPageState extends State<TabBarSecondPage> with SingleTickerProviderStateMixin {
  TabController _controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = TabController(vsync: this, length: 8);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tab Bar second",
            style: TextStyle(fontSize: 16, color: Colors.blue)),
      ),
      body: _createTabBar(),
    );
  }

  Widget _createTabBar() {
    return TabBar(
      onTap: (index) {
        print("=======index========" + index.toString());
      },
      controller: _controller,
      isScrollable: true,
      tabs: [
        Text(
          '精选',
          style: TextStyle(color: Colors.green, fontSize: 16.0),
        ),
        Text(
          '猜你喜欢',
          style: TextStyle(color: Colors.indigoAccent, fontSize: 16.0),
        ),
        Text('母婴'),
        Text('儿童'),
        Text('女装'),
        Text('女装'),
        Text('女装'),
        Text('女装'),
      ],
    );
  }
}
