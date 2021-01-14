import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TabBarHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      margin: EdgeInsets.only(top: 40),
      child: GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, "tab_bar_second");
        },
        child: Text(
          "skip to second page",
          style: TextStyle(fontSize: 15, color: Colors.black12),
        ),
      ),
    );
  }
}
