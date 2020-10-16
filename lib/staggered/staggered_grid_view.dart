import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutterappstudy/staggered/lib/src/widgets/staggered_grid_view.dart';

import 'lib/src/widgets/staggered_tile.dart';

class StaggeredGridViewTest extends StatefulWidget {
  @override
  _StaggeredGridViewState createState() => _StaggeredGridViewState();
}

class _StaggeredGridViewState extends State<StaggeredGridViewTest> {
  ScrollController _scrollController = new ScrollController();
  var width;

  List<String> list = [
    "http://yanxuan.nosdn.127.net/65091eebc48899298171c2eb6696fe27.jpg",
    "https://dss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=3892521478,1695688217&fm=26&gp=0.jpg",
    "https://dss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=2534506313,1688529724&fm=26&gp=0.jpg",
    "https://dss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=1593106255,4245861836&fm=26&gp=0.jpg",
    "https://dss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=1689053532,4230915864&fm=26&gp=0.jpg",
    "https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=2785664598,2744227082&fm=26&gp=0.jpg",
    "https://dss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=151472226,3497652000&fm=26&gp=0.jpg",
    "https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=3665391387,2872585366&fm=26&gp=0.jpg",
    "https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=3238317745,514710292&fm=26&gp=0.jpg",
    "https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=1089874897,1268118658&fm=26&gp=0.jpg",
    "https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=188173295,510375359&fm=26&gp=0.jpg",
    "https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=3048570398,2346054715&fm=26&gp=0.jpg",
    "https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=3557543371,89408500&fm=26&gp=0.jpg",
    "https://ss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=3922290090,3177876335&fm=26&gp=0.jpg",
    'https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=3461791801,4164119571&fm=26&gp=0.jpg',
    'https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=3004321252,2072996672&fm=26&gp=0.jpg',
    'https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=1867417546,3805362041&fm=26&gp=0.jpg'
  ];

  var params = [
    {"width": 200, "height": 300},
    {"width": 250, "height": 350},
    {"width": 200, "height": 360},
    {"width": 200, "height": 100},
    {"width": 200, "height": 220},
    {"width": 200, "height": 380},
    {"width": 200, "height": 400},
    {"width": 200, "height": 500},
    {"width": 200, "height": 90},
    {"width": 200, "height": 120},
    {"width": 200, "height": 350},
    {"width": 200, "height": 300},
    {"width": 200, "height": 600},
    {"width": 200, "height": 200},
    {"width": 200, "height": 300},
    {"width": 200, "height": 400},
    {"width": 200, "height": 300},
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;

    return Container(color: Colors.white, child: countBuilder());
  }

  Widget countBuilder() {
    return StaggeredGridView.countBuilder(
      controller: _scrollController,
      itemCount: list.length,
      primary: false,
      crossAxisCount: 4,
      mainAxisSpacing: 4.0,
      crossAxisSpacing: 4.0,
      itemBuilder: (context, index) => createItem2(context, index),
      staggeredTileBuilder: (index) => StaggeredTile.fit(2),
    );
  }

  Widget createItem(context, index) {
    var height = params[index]["height"];
    double heightint = double.parse(height.toString());

    return Column(
      children: <Widget>[
        Container(
            child: FadeInImage.assetNetwork(
          image: list[index],
          placeholder: "assets/loading.jpg",
          fit: BoxFit.cover,
          width: width / 2,
          height: heightint,
        )),
        Text("当前的item：" + index.toString(),
            style: TextStyle(color: Colors.blue, fontSize: 15)),
      ],
    );
  }

  Widget createItem2(context, index) {
    var height = params[index]["height"];
    double heightint = double.parse(height.toString());

    return Column(
      children: <Widget>[
        Container(
            child: Image.network(list[index],
//                height: heightint,
                fit: BoxFit.cover)),
        Text("当前的item：" + index.toString(),
            style: TextStyle(color: Colors.blue, fontSize: 15)),
      ],
    );
  }
}
