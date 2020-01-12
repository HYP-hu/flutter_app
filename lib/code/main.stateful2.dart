import 'package:flutter/cupertino.dart';
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
      appBar: AppBar(title: Text(" A Flutter App")),
      body: HomeBody(),
    ));
  }
}

class HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    print("HomeBody build");
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        MyCounterWidget(1),
        MyCounterWidget(2),
        MyCounterWidget(3),
        MyCounterWidget(4),
      ],
    );
  }
}

class MyCounterWidget extends StatefulWidget {
  final int id;
  MyCounterWidget(this.id) {
    print("执行了${id}MyCounterWidget的构造方法");
  }

  @override
  State<StatefulWidget> createState() {
    print("执行了${id}MyCounterWidget的createState方法");
    // TODO: implement createState
    return MyCounterState(id);
  }
}

class MyCounterState extends State<MyCounterWidget> {
  int counter = 0;
  int id;
  MyCounterState(this.id) {
    print("执行了${id}MyCounterState的构造方法");
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    print("执行${id}MyCounterState的build方法");
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                color: Colors.redAccent,
                child: Text("+1",
                    style: TextStyle(fontSize: 18, color: Colors.white)),
                onPressed: () {
                  setState(() {
                    counter++;
                  });
                },
              ),
              RaisedButton(
                color: Colors.redAccent,
                child: Text("-1",
                    style: TextStyle(fontSize: 18, color: Colors.white)),
                onPressed: () {
                  setState(() {
                    counter--;
                  });
                },
              )
            ],
          ),
          Text(
            "当前计数：$counter",
            style: TextStyle(fontSize: 30),
          )
        ],
      ),
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print("执行了${id}MyCounterState的init方法");
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    print("执行了${id}MyCounterState的didChangeDependencies方法");
  }

  @override
  void didUpdateWidget(MyCounterWidget oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
    print("执行${id}MyCounterState的didUpdateWidget方法");
  }

  @override
  void dispose() {
    // TODO: implement dispose
    print("执行${id}MyCounterState的dispose方法");
    super.dispose();
  }
}
