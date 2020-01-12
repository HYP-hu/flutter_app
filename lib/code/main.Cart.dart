import 'package:flutter/material.dart';

main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.blueAccent),
      home: Scaffold(
        appBar: AppBar(
          title: Text("A Flutter App"),
        ),
        body: LayoutDemo(),
      ),
    );
  }
}

class LayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(
      children: <Widget>[
        Card(
            margin: EdgeInsets.all(10),
            child: Column(
              children: <Widget>[
                ListTile(
                  title: Text(
                    "崔晓华",
                    style: TextStyle(fontSize: 28),
                  ),
                  subtitle: Text('高级Python工程师'),
                ),
                ListTile(
                  title: Text("电话: xxxxxxxxx"),
                ),
                ListTile(title: Text("地址: xxxxxxxxx"))
              ],
            )),
        Card(
          margin: EdgeInsets.all(10),
          child: ListTile(
            title: Text(
              "杨晓彤",
              style: TextStyle(fontSize: 28),
            ),
            subtitle: Text('中级Python工程师'),
          ),
        ),
        Card(
          margin: EdgeInsets.all(10),
          child: ListTile(
            title: Text(
              "王伟超",
              style: TextStyle(fontSize: 28),
            ),
            subtitle: Text('架构师'),
          ),
        ),

//
      ],
    );
  }
}
