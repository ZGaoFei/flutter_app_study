import 'package:flutter/material.dart';

class HeroTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Hero"),
          actions: <Widget>[createInkWell(context)],
        ),
        body: Container(
          child: Column(
            children: <Widget>[
              Text(
                "Hero two page",
                style: TextStyle(fontSize: 16, color: Colors.red),
              ),
              Hero(
                tag: "hero_two",
                child: FlutterLogo(
                  size: 40,
                  colors: Colors.red,
                ),
              )
            ],
          ),
        ));
  }

  Widget createHero() {
    return Hero(
        tag: "hero_one",
        child: FlutterLogo(
          size: 40,
          colors: Colors.red,
        ));
  }

  Widget createInkWell(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.of(context).pop(),
      child: createHero(),
    );
  }
}
