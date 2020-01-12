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
    return Center(
        child: Container(
      height: 400,
      width: 300,
      color: Colors.black,
      child: Stack(
        // alignment: Alignment.center,
        children: <Widget>[
          Align(
            alignment: Alignment(-1, -1),
            child: Icon(Icons.search, size: 30, color: Colors.white),
          ),
          Align(
              alignment: Alignment.center,
              child: Icon(Icons.search, size: 30, color: Colors.yellow)),
          Align(
              alignment: Alignment.topRight,
              child: Icon(Icons.select_all, size: 30, color: Colors.pink))
        ],
      ),
    ));
  }
}
