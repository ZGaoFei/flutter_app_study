import 'package:flutter/material.dart';

class TextBreakMain extends StatelessWidget {
  final String title =
      "假设我们要开发一个电商APP，当用户没有登录时可以看店铺、商品等信息，但交易记录、购物车、用户个人信息等页面需要登录后才能看。为了实现上述功能，我们需要在打开每一个路由页前判断用户登录状态！如果每次打开路由前我们都需要去判断一下将会非常麻烦，那有什么更好的办法吗？答案是有！";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
        "text换行问题",
        style: TextStyle(color: Colors.red, fontSize: 16),
      )),
      body: InkWell(
        onTap: () {
          print("onTap");
        },
        onLongPress: () {
          print("onLongPress");
        },
        child: Container(
          padding: EdgeInsets.all(20),
          child: Row(
            children: <Widget>[
              Image.network(
                "https://dss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=1830914723,3154965800&fm=26&gp=0.jpg",
                width: 150,
                height: 100,
              ),
              Expanded(
                child: Text(
                  title,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(color: Colors.red, fontSize: 16),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
