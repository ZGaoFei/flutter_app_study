import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("study flutter"),
      ),
      body: Container(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(5.0),
          child: Column(
            children: <Widget>[
              createClickItem(context, "state 管理", "state_manager"),
              createClickItem(context, "null view", "null_view"),
              createClickItem(
                  context, "stateless生命周期", "stateless_widget_active"),
              createClickItem(
                  context, "stateful生命周期", "stateful_widget_active"),
              createClickItem(context, "Hero", "hero_page"),
              createClickItem(
                  context, "InheritedWidget", "inherited_widget_home")
            ],
          ),
        ),
      ),
    );
  }

  Widget createClickItem(BuildContext context, String title, String pageName) {
    return GestureDetector(
        child: createItem(title),
        onTap: () => Navigator.pushNamed(context, pageName));
  }

  Widget createItem(String title) {
    return Container(
      padding: EdgeInsets.all(5.0),
      height: 50,
      color: Colors.orange,
      alignment: Alignment.center,
      margin: EdgeInsetsDirectional.only(bottom: 2.5, top: 2.5),
      child: Text(title,
          style: new TextStyle(fontSize: 15, color: Colors.black45)),
    );
  }
}
