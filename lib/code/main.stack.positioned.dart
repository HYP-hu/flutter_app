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
          color: Colors.black12,
          child: Stack(
            children: <Widget>[
              Positioned(
                left: 10,
                child: Icon(Icons.home, size: 30, color: Colors.pink),
              ),
              Positioned(
                right: 10,
                child: Icon(Icons.add_shopping_cart,
                    size: 30, color: Colors.blueGrey),
              ),
              Positioned(
                left: 100,
                child: Icon(Icons.accessible,
                    size: 30, color: Colors.yellowAccent),
              ),
              Positioned(
                  bottom: 120,
                  right: 40,
                  child: Text(
                    '崔晓华别睡了!!!李总来了!!!',
                    style: TextStyle(fontSize: 20, color: Colors.red),
                  ))
            ],
          )),
    );
  }
}
