import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutterappstudy/json_parse/JsonModel.dart';

class JsonParseMain extends StatefulWidget {
  @override
  _JsonParseMainState createState() => _JsonParseMainState();
}

class _JsonParseMainState extends State<JsonParseMain> {
  final String jsonStr =
      "{\"code\": \"200\", \"message\": \"success\",\"result\":[{\"labelName\":\"幽默\",\"labelId\":6,\"showMore\": false,\"list\": [{\"id\":33,\"title\":\"测试今日推荐\",\"describtion\":\"测试\"},{\"id\":34,\"title\":\"测试今日哈哈\",\"describtion\":\"测试\"},{\"id\":35,\"title\":\"测试今日嘻嘻\",\"describtion\":\"测试\"}]},{\"labelName\":\"搞笑\",\"labelId\":7,\"showMore\": false,\"list\": [{\"id\":22,\"title\":\"测试今日搞笑\",\"describtion\":\"测试\"},{\"id\":23,\"title\":\"测试今日搞\",\"describtion\":\"测试\"},{\"id\":24,\"title\":\"测试今日笑\",\"describtion\":\"测试\"}]}]}";
  var models = [];
  var jsonModel = JsonModel();

  @override
  void initState() {
    super.initState();
    noParseJson();
    parseJson();
  }

  /// 不解析直接取值
  void noParseJson() {
    var data = jsonDecode(jsonStr);
    models = data["result"];
    print(models);
    print(models[0]["labelName"]);
  }

  /// 解析后取值
  void parseJson() {
    var data = jsonDecode(jsonStr);
    jsonModel = JsonModel.fromJson(data);
    print(jsonModel.result[0].labelName);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Json parse",
              style: TextStyle(fontSize: 16, color: Colors.red)),
        ),
        body: ListView.builder(
            itemCount: jsonModel.result.length,
            itemExtent: 50,
            itemBuilder: (context, i) {
              return _createItem(context, i);
            }));
  }

  Widget _createItem(context, i) {
    return Center(
      child: Text(
        jsonModel.result[i].labelName,
        style: TextStyle(fontSize: 16, color: Colors.red),
      ),
    );
  }
}
