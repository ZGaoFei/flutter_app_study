import 'package:flutter/material.dart';
import 'package:flutterappstudy/hero/hero_two.dart';

class HeroHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Hero")), body: createHero(context));
  }

  Widget createHero(BuildContext context) {
    return Container(
      padding: EdgeInsetsDirectional.only(start: 20, top: 20),
      child: Column(
        children: <Widget>[
          Hero(
              tag: "hero_one",
              child: FlutterLogo(
                size: 40,
                colors: Colors.blue,
              )),
          Hero(
              tag: "hero_two",
              child: FlutterLogo(
                size: 40,
                colors: Colors.blue,
              )),
          Text("Hero one page",
              style: TextStyle(fontSize: 14, color: Colors.blue)),
          RaisedButton(
              onPressed: () => Navigator.push(
                  context,
//                  Bottom2TopRouter(child: HeroTwo(), durationMs: 1000)
                  CustomerRouter(child: HeroTwo(), durationMs: 800)),
              // Navigator.pushNamed(context, "hero_two_page")
              child: Text("skip to next page",
                  style: TextStyle(color: Colors.blue, fontSize: 14)))
        ],
      ),
    );
  }
}

class CustomerRouter<T> extends PageRouteBuilder<T> {
  final int durationMs;
  final Curve curve;
  final Widget child;

  CustomerRouter(
      {this.durationMs = 400, this.curve = Curves.easeInOut, this.child})
      : super(
            transitionDuration: Duration(milliseconds: durationMs),
            pageBuilder: (context, animation1, animation2) {
              return child;
            },
            transitionsBuilder:
                (context, animation1, animation2, Widget child) {
              return SlideTransition(
                  position: Tween<Offset>(
                          begin: Offset(0.0, 1.0), end: Offset(0.0, 0.0))
                      .animate(
                          CurvedAnimation(parent: animation1, curve: curve)),
                  child: child);
            });
}

class Bottom2TopRouter<T> extends PageRouteBuilder<T> {
  final Widget child;
  final int durationMs;
  final Curve curve;

  Bottom2TopRouter(
      {this.child, this.durationMs = 500, this.curve = Curves.fastOutSlowIn})
      : super(
            transitionDuration: Duration(milliseconds: durationMs),
            pageBuilder: (ctx, a1, a2) {
              return child;
            },
            transitionsBuilder: (
              ctx,
              a1,
              a2,
              Widget child,
            ) {
              return SlideTransition(
                  position: Tween<Offset>(
                          begin: Offset(0.0, 1.0), end: Offset(0.0, 0.0))
                      .animate(CurvedAnimation(parent: a1, curve: curve)),
                  child: child);
            });
}
