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
    return Container(
      width: 200,
      child: AspectRatio(
          aspectRatio: 2.0 / 1.0,
          child: Image.network(
            'https://www.itying.com/images/flutter/1.png',
            fit: BoxFit.cover,
          )),
      decoration:
          BoxDecoration(border: Border.all(color: Colors.green, width: 2.0)),
    );
  }
}
