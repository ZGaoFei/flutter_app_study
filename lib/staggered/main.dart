import 'package:flutter/material.dart';
import 'package:flutterappstudy/staggered/home.dart';

import 'routes.dart';

class StaggeredMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'StaggeredGridView Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Home(),
      routes: routes,
    );
  }
}
