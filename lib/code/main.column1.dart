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
        title: Text("A Flutter App"),
      ),
      body: LayoutDemo(),
    ));
  }
}

class LayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
        height: 800.0,
        width: 400.0,
        color: Colors.pink,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly, // 均匀分布
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              IconContainer(Icons.search, color: Colors.blue),
              IconContainer(Icons.home, color: Colors.orange),
              IconContainer(Icons.select_all, color: Colors.yellow)
            ]));
  }
}

class IconContainer extends StatefulWidget {
  final double size;
  final Color color;
  final IconData icon;
  IconContainer(this.icon, {this.size, this.color});

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyState(this.icon, size: this.size, color: this.color);
  }
}

class MyState extends State<IconContainer> {
  double size = 32.0;
  Color color = Colors.red;
  IconData icon;
  MyState(this.icon, {this.size, this.color});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 100.0,
      width: 100.0,
      color: color,
      child: Center(child: Icon(icon, size: size, color: Colors.white)),
    );
  }
}
