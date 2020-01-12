import 'package:flutter/material.dart';

main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text(
                'Fluter App',
                style: TextStyle(fontSize: 20, color: Colors.pink),
              ),
            ),
            body: HomeContent()));
  }
}

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Container(
          child: Text('我是一个文本',
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
              textScaleFactor: 2,
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.red,
                fontWeight: FontWeight.w200,
                fontStyle: FontStyle.italic,
                decoration: TextDecoration.lineThrough,
                decorationColor: Colors.white,
                decorationStyle: TextDecorationStyle.dashed,
                letterSpacing: 6.0,
              )),
          height: 300.0,
          width: 300.0,
          decoration: BoxDecoration(
            color: Colors.yellow,
            border: Border.all(
              color: Colors.blue,
              width: 2.0,
            ),
            borderRadius: BorderRadius.all(Radius.circular(8)),
            // Radius.circular(150) // 圆形
          ),
          // padding: EdgeInsets.all(10.0),
          padding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
          margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
          transform: Matrix4.translationValues(0, 0, 0),
          alignment: Alignment.bottomCenter),
    );
  }
}
