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

class LayoutDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyStateDemo();
  }
}

class MyStateDemo extends State<LayoutDemo> {
  int num = 0;
  MyStateDemo();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Chip(
          label: Text(
            '值为:  $num',
            style: TextStyle(fontSize: 30, color: Colors.pink),
            overflow: TextOverflow.ellipsis,
          ),
        ),
        SizedBox(height: 20,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              child: Text('+1'),
              onPressed: () {
                setState(() {
                  num++;
                });
              },
            ),
            RaisedButton(
              child: Text('-1'),
              onPressed: () {
                setState(() {
                  num--;
                });
              },
            )
          ],
        )
      ],
    );
  }
}
