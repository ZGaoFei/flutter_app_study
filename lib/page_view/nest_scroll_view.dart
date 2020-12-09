import 'package:flutter/material.dart';

final List<String> data = [
  "第一行",
  "第2行",
  "第3行",
  "第4行",
  "第5行",
  "第6行",
  "第7行",
  "第8行",
  "第9行",
  "第10行",
  "第11行"
];

final List<String> data1 = [
  "第一行",
];

class NestScrollViewTest extends StatefulWidget {
  @override
  _NestScrollViewTestState createState() => _NestScrollViewTestState();
}

class _NestScrollViewTestState extends State<NestScrollViewTest> {
  double width;
  double height;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    width = size.width;
    height = size.height;

    return Scaffold(
        appBar: AppBar(
            title: Text(
          "page view 测试",
          style: TextStyle(color: Colors.red, fontSize: 16),
        )),
        body: NestedScrollView(
            headerSliverBuilder:
                (BuildContext context, bool innerBoxIsScrolled) {
              return <Widget>[
                _buildHeader()
              ];
            },
            body: _buildPageView()));
  }

  Widget _buildHeader() {
    return SliverToBoxAdapter(
      child: Container(
        width: width,
        height: 100,
        color: Colors.blue,
        alignment: Alignment.center,
        child: Text(
          "这是头部",
          style: TextStyle(fontSize: 16, color: Colors.red),
        ),
      ),
    );
  }

  Widget _buildPageView() {
    return Container(
      width: width,
      height: height,
      child: PageView.builder(
          itemCount: 2,
          itemBuilder: (context, index) => _buildPageViewItem(context, index)),
    );
  }

  Widget _buildPageViewItem(context, index) {
    List<String> currentData = index == 0 ? data : data1;
    return ListView.builder(
        itemCount: currentData.length,
        itemBuilder: (context, index) =>
            _buildListViewItem(context, index, currentData));
  }

  Widget _buildListViewItem(context, index, currentData) {
    var string = currentData[index];
    return Container(
        width: width,
        height: 200,
        color: Colors.white,
        alignment: Alignment.center,
        child: Text(
          string,
          style: TextStyle(color: Colors.red, fontSize: 16),
        ));
  }
}
