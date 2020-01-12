import 'package:flutter/material.dart';
import 'package:flutter_app/views/Person/Picture.dart';

class Person extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _PictureShowState();
  }
}

class _PictureShowState extends State<Person> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        RaisedButton(
          child: Text('显示美丽的图片'),
          color: Theme.of(context).accentColor,
          textTheme: ButtonTextTheme.primary,
          onPressed: () {
            // 路由跳转
            setState(() {
              // 使用命名路由跳转
              Navigator.pushNamed(context, '/picture', arguments: "美丽的风景");
              // 使用普通路由
//              Navigator.of(context).push(
//                MaterialPageRoute(
//                  builder: (BuildContext context){
//                    return Picture();
//                  }
//                )
//              );
            });
          },
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
        )
      ],
    );
  }
}
