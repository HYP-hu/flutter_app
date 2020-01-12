import 'package:flutter/material.dart';

main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.blueAccent),
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: Text("A Flutter App"),
            centerTitle: true,
            bottom: TabBar(
              tabs: <Widget>[Tab(text: "热门"), Tab(text: "推荐")],
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              ListView(
                children: <Widget>[
                  ListTile(title: Text("这是第一个tab"),),
                  ListTile(title: Text("这是第一个tab"),),
                  ListTile(title: Text("这是第一个tab"),)
                ],
              ),
              ListView(
                children: <Widget>[
                  ListTile(title: Text("这是第二个tab"),),
                  ListTile(title: Text("这是第二个tab"),),
                  ListTile(title: Text("这是第二个tab"),),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class LayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Text('1111111');
  }
}
