import 'package:flutter/material.dart';
import 'package:flutterappstudy/scroll_to_control/scroll_to_index.dart';

class ScrollToListView extends StatefulWidget {
  @override
  _ScrollToListViewState createState() => _ScrollToListViewState();
}

class _ScrollToListViewState extends State<ScrollToListView> {
  AutoScrollController controller = AutoScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ListView列表"),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        controller.scrollToIndex(10, preferPosition: AutoScrollPosition.begin);
      }),
      body: ListView.builder(
          itemCount: 40,
          controller: controller,
          itemBuilder: (context, index) => _buildItem(context, index)),
    );
  }

  Widget _buildItem(context, index) {
    return AutoScrollTag(
      key: ValueKey(index),
      controller: controller,
      index: index,
      child: Container(
          alignment: Alignment.center,
          height: 50.0 + double.parse(index.toString()),
          padding: EdgeInsets.all(16.0),
          child: Text(
            "position is " + index.toString(),
            style: TextStyle(color: Colors.grey),
          )),
      highlightColor: Colors.black.withOpacity(0.1),
    );
  }
}
