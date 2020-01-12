import 'package:flutter/material.dart';

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
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              onPressed: () {
                setState(() {
//                  Navigator.of(context).pushReplacementNamed('/login', arguments: "登陆成功!");
                  Navigator.pushNamed(context, '/loginfirst', arguments: "登陆第一步!");
                });
              },
              child: Text("登录"),
            ),

            RaisedButton(
              onPressed: () {
                setState(() {
                  Navigator.pushNamed(context, '/registerfirst', arguments: "注册下一步");
                });
              },
              child: Text('注册'),
            )
          ],
        ),
        RaisedButton(child: Text("新闻大事记"),
          color: Colors.green,
          onPressed: () {
          Navigator.pushNamed(context, '/news');
        },
        ),
      ],
    );
  }
}
