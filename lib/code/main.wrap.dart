import 'package:flutter/material.dart';
import 'package:flutter_app/code/listData.dart';

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
    return Container(
      height: 600,
      width: 400,
      child: Wrap(
        direction: Axis.vertical, // 以什么方向排列，纵轴或者横轴
        runSpacing: 1, // 纵轴间距
        spacing: 6, // 组件间间距
        // alignment: WrapAlignment.spaceAround, //调节横轴的位置
        runAlignment: WrapAlignment.spaceAround, //调节纵轴位置
        children: listName.map((value) {
          return RaisedButton(
            child: Text(value),
            textColor: Theme.of(context).accentColor,
            onPressed: () {},
          );
        }).toList(),
      ),
    );
  }
}
