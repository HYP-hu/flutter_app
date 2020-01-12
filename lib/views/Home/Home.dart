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
                splashColor: Colors.cyan,
                color: Colors.blue,
                textColor: Colors.white,
                elevation: 10.0, // 阴影的大小
                child: Text('+1'),
                onPressed: () {
                  setState(() {
                    counter++;
                  });
                },
              ),
              SizedBox(
                width: 10.0,
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
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            // 按钮大小自适应
            width: 300,
            height: 50,
            child: RaisedButton(
              elevation: 20, // 阴影大小
              shape: RoundedRectangleBorder(
                  // 通过shape属性改变形状 圆角按钮
                  borderRadius: BorderRadius.circular(10)),
              textColor: Colors.white,
              child: Text('复位', style: TextStyle(fontSize: 30)),
              color: Colors.green,
              onPressed: () {
                setState(() {
                  counter = 0;
                });
              },
            ),
          ),
          SizedBox(
            width: 5,
          ),
          RaisedButton.icon(
            icon: Icon(Icons.search),
            color: Colors.lightBlue,
            textColor: Colors.white,
            label: Text(
              '图标按钮',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            onPressed: () {},
          ),
          SizedBox(
            height: 20,
          ),
//          Container(
//            width: 120,
//            height: 120,
//            child: RaisedButton(
//              child: Text('圆形按钮'),
//              color: Colors.blue,
//              textColor: Colors.white,
//              elevation: 20,
//              shape: CircleBorder(side: BorderSide(color: Colors.white)),
//              onPressed: () {},
//            ),
//          ),
          FlatButton(
            child: Text('扁平化按钮'),
            textColor: Colors.white,
            color: Colors.lightBlue,
            onPressed: () {},
          ),
          OutlineButton(
            color: Colors.lightBlue,
            child: Text('带边框的按钮'),
            onPressed: () {},
          )
        ],
      ),
    );
  }
}
