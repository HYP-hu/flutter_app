import 'package:flutter/material.dart';

main(List<String> args) {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('A Flutter App'),
      ),
      body: MyCounterWidget(),
    ),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('A Flutter App'),
        ),
        body: HomeContent(),
      ),
    );
  }
}

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container();
  }
}

class MyCounterWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyCounterState();
  }
}

class MyCounterState extends State<MyCounterWidget> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                color: Colors.redAccent,
                child: Text(
                  "+1",
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
                onPressed: () {
                  setState(() {
                    counter++;
                  });
                },
              ),
              RaisedButton(
                color: Colors.redAccent,
                child: Text(
                  "-1",
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
                onPressed: () {
                  setState(() {
                    counter--;
                  });
                },
              ),
            ],
          ),
          Text(
            "当前计数: $counter",
            style: TextStyle(fontSize: 30),
          )
        ],
      ),
    );
  }
}
