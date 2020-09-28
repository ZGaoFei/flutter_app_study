import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

class FirstAppSave extends StatelessWidget {
  /// 构造方法传值
//  final List<WordPair> list;
//  FirstAppSave({key, @required this.list}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    /// 命名路由传值
    var list = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      appBar: AppBar(
        title: Text("first app save",
            style: TextStyle(fontSize: 16, color: Colors.blue)),
      ),
      body: _createContainer(list),
    );
  }

  Widget _createContainer(list) {
    var widgets = List<Widget>();
    for (var item in list) {
      widgets.add(_createItem(item.asPascalCase));
    }

    return ListView(
      children: widgets,
    );
  }

  Widget _createItem(title) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Text(
        title,
        style: TextStyle(fontSize: 16, color: Colors.blue),
      ),
    );
  }
}
