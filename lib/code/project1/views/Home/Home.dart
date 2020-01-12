import 'package:flutter/material.dart';

class HomeDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _HomeDemoState();
  }
}

class _HomeDemoState extends State<HomeDemo> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('当前计数为: ', style: TextStyle(fontSize: 20)),
              Text(
                '$counter',
                style: TextStyle(fontSize: 20, color: Colors.pink),
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                child: Text('+1'),
                onPressed: () {
                  setState(() {
                    counter++;
                  });
                },
              ),
              SizedBox(
                width: 10,
              ),
              RaisedButton(
                child: Text('-1'),
                onPressed: () {
                  setState(() {
                    counter--;
                  });
                },
              )
            ],
          )
        ],
      ),
    );
  }
}