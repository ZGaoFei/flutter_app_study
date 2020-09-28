import 'package:flutter/material.dart';
import 'package:flutterappstudy/first_app/first_app_save.dart';

import 'first_app_home.dart';

class FirstAppMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "First App",
      theme: ThemeData(
        primaryColor: Colors.white
      ),
      home: FirstAppHome(),
      routes: {
        "first_app_save": (context)=> new FirstAppSave(),
      },
    );
  }
}
