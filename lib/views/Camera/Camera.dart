import 'package:flutter/material.dart';

class Camera extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _CameraState();
  }
}

class _CameraState extends State<Camera> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Row(
            children: <Widget>[
              Expanded(
                child: TabBar(
                  isScrollable: true, // 如果有多个按钮的话 可以滑动
                  indicatorColor: Colors.pink, // 选中的下划线颜色
                  labelColor: Colors.red, // 选中的字体颜色
                  unselectedLabelColor: Colors.black, // 未选中的字体颜色
                  indicatorSize: TabBarIndicatorSize.label, // 选中下划线的长度
                  tabs: <Widget>[Tab(text: "我的好友"), Tab(text: "新鲜事")],
                  indicator: const BoxDecoration(), // 取消下划线
                ),
              )
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            ListView(
              children: <Widget>[
                Card(
                  child: ListTile(title: Text('崔晓华')),
                ),
                Card(
                  child: ListTile(title: Text('杨晓彤')),
                ),
                Card(
                  child: ListTile(title: Text('王若静')),
                ),
                Card(
                  child: ListTile(title: Text('王伟超')),
                ),
              ],
            ),
            ListView(
              children: <Widget>[
                Card(
                  child: ListTile(
                    title: Text('新鲜事1'),
                  ),
                ),
                Card(
                  child: ListTile(
                    title: Text('新鲜事2'),
                  ),
                ),
                Card(
                  child: ListTile(
                    title: Text('新鲜事3'),
                  ),
                ),
                Card(
                  child: ListTile(
                    title: Text('新鲜事4'),
                  ),
                ),
                Card(
                  child: ListTile(
                    title: Text('新鲜事5'),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
