import 'package:flutter/material.dart';

import 'main.column1.dart';

main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        theme: ThemeData(primaryColor: Colors.blueGrey),
        home: Scaffold(
          appBar: AppBar(
            title: Text('A Flutter App'),
          ),
          body: LayoutDemo(),
        ));
  }
}

class LayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Row(
      children: <Widget>[
        // Expanded(
        //   flex: 1,
        //   child: IconContainer(Icons.search, color: Colors.blue),
        // ),
        // Expanded(
        //   flex: 2,
        //   child: IconContainer(Icons.add_shopping_cart, color: Colors.green),
        // ),
        // Expanded(
        //   flex: 1,
        //   child: IconContainer(Icons.select_all, color: Colors.pinkAccent),
        // )
        Expanded(
          // 自适应大小
          flex: 1,
          child: IconContainer(Icons.select_all, color: Colors.pinkAccent),
        ),
        IconContainer(Icons.add_shopping_cart, color: Colors.green)
      ],
    );
  }
}
