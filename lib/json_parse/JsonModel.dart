class JsonModel {
  String code;
  String message;
  List<Result> result;

  JsonModel({this.code, this.message, this.result});

  JsonModel.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    message = json['message'];
    if (json['result'] != null) {
      result = new List<Result>();
      json['result'].forEach((v) {
        result.add(new Result.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['code'] = this.code;
    data['message'] = this.message;
    if (this.result != null) {
      data['result'] = this.result.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Result {
  String labelName;
  int labelId;
  bool showMore;
  List<Item> list;

  Result({this.labelName, this.labelId, this.showMore, this.list});

  Result.fromJson(Map<String, dynamic> json) {
    labelName = json['labelName'];
    labelId = json['labelId'];
    showMore = json['showMore'];
    if (json['list'] != null) {
      list = new List<Item>();
      json['list'].forEach((v) {
        list.add(new Item.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['labelName'] = this.labelName;
    data['labelId'] = this.labelId;
    data['showMore'] = this.showMore;
    if (this.list != null) {
      data['list'] = this.list.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Item {
  int id;
  String title;
  String describtion;

  Item({this.id, this.title, this.describtion});

  Item.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    describtion = json['describtion'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['describtion'] = this.describtion;
    return data;
  }
}
