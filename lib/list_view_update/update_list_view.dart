import 'package:flutter/material.dart';

class UpdateListViewTest extends StatefulWidget {
  @override
  _UpdateListViewTestState createState() => _UpdateListViewTestState();
}

class _UpdateListViewTestState extends State<UpdateListViewTest> {
  List<String> _list = List();

  @override
  void initState() {
    super.initState();
    for (int i = 0; i < 30; i++) {
      _list.add("item: " + i.toString());
    }
  }

  _updateList() {
    List<String> list = List();
    for (int i = 30; i > 0; i--) {
      list.add("item: " + i.toString());
    }
    setState(() {
      _list = list;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text(
          "刷新ListView的问题",
          style: TextStyle(color: Colors.red, fontSize: 16),
        )),
        floatingActionButton: FloatingActionButton(
            child: Text(
              "刷新",
              style: TextStyle(color: Colors.white),
            ),
            onPressed: () {
              _updateList();
            }),
        body: _buildListView());
  }

  Widget _buildListView() {
    return ListView.builder(
        key: ObjectKey(_list[0]),
        // controller: ScrollController(keepScrollOffset: false),
        itemCount: _list.length,
        itemBuilder: (context, position) => _buildItem(position));
  }

  Widget _buildItem(position) {
    return Container(
      height: 50,
      child: Text(
        _list[position],
        style: TextStyle(color: Colors.red, fontSize: 15),
      ),
    );
  }
}
