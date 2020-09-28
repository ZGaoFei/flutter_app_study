import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:flutterappstudy/first_app/first_app_save.dart';

class FirstAppHome extends StatefulWidget {
  @override
  _FirstAppHomeState createState() => _FirstAppHomeState();
}

class _FirstAppHomeState extends State<FirstAppHome> {
  final _suggestion = new List<WordPair>();
  final _save = new Set<WordPair>();

  @override
  void initState() {
    super.initState();
    _suggestion.addAll(generateWordPairs().take(10));
  }

  void _pressSave(context) {
    /// 命名路由传值
    Navigator.pushNamed(context, "first_app_save", arguments: _save.toList());

    /// 构造方法传值
//    Navigator.push(context, MaterialPageRoute(builder: (context) {
//      return FirstAppSave(list: _save.toList());
//    }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "first app",
          style: TextStyle(color: Colors.blue, fontSize: 16),
        ),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.list), onPressed: () => this._pressSave(context))
        ],
      ),
      body: Container(child: ListView.builder(itemBuilder: (context, index) {
        if (index >= _suggestion.length) {
          _suggestion.addAll(generateWordPairs().take(10));
        }

        if ((index + 1) % 2 == 0) {
          return Divider();
        }

        return _createItemBuilder(context, index);
      })),
    );
  }

  Widget _createItemBuilder(context, index) {
    var _wordPair = _suggestion[index];
    var _title = _wordPair.asPascalCase;
    var _contain = _save.contains(_wordPair);

    return Container(
      padding: EdgeInsets.all(15),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Text(
              _title,
              style: TextStyle(fontSize: 16, color: Colors.blue),
            ),
          ),
          GestureDetector(
              child: Icon(
                _contain ? Icons.favorite : Icons.favorite_border,
                color: _contain ? Colors.red : null,
              ),
              onTap: () => this.setState(() {
                    _contain ? _save.remove(_wordPair) : _save.add(_wordPair);
                  }))
        ],
      ),
    );
  }
}
