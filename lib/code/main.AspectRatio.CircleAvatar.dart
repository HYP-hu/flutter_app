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
    return ListView(
      children: <Widget>[
        Card(
          margin: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              AspectRatio(
                aspectRatio: 20 / 9,
                child: Image.network(
                    'https://www.itying.com/images/flutter/1.png',
                    fit: BoxFit.cover),
              ),
              ListTile(
//                  leading: ClipOval(
//                      child: Image.network(
//                    'https://www.itying.com/images/flutter/2.png',
//                        width: 50,
//                        height: 50,
//                        fit: BoxFit.cover,
//                  )),
                  leading: CircleAvatar(
                    // 头像组件
                    backgroundImage: NetworkImage(
                        'https://www.itying.com/images/flutter/2.png'),
                  ),
                  title: Text("Candy Shop"),
                  subtitle: Text(
                    "Flutter is Google's mobile UI framework for crafting high-哈哈哈",
                    style: TextStyle(),
                    overflow: TextOverflow.ellipsis,
                  ))
            ],
          ),
        )
      ],
    );
  }
}
