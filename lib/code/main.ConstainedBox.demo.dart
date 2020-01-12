import 'package:flutter/material.dart';

main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        theme: ThemeData(primaryColor: Colors.pinkAccent),
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
    return Container(
        padding: EdgeInsets.fromLTRB(10, 5, 10, 10),
        child: Column(
          children: <Widget>[
            Container(
              height: 200,
              child: ConstrainedBox(
                // 填充父组件
                constraints: new BoxConstraints.expand(),
                child: Image.network(
                  'https://www.itying.com/images/flutter/1.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 10),
            Row(
              children: <Widget>[
                Expanded(
                    flex: 2,
                    child: Container(
                      height: 200,
                      child: Image.network(
                        'https://www.itying.com/images/flutter/2.png',
                        fit: BoxFit.cover,
                      ),
                    )),
                SizedBox(width: 10),
                Expanded(
                  flex: 1,
                  child: Container(
                    height: 200,
                    child: ListView(children: <Widget>[
                      Container(
                          height: 95,
                          child: Image.network(
                            'https://www.itying.com/images/flutter/3.png',
                            fit: BoxFit.cover,
                          )),
                      SizedBox(height: 10),
                      Container(
                          height: 95,
                          child: Image.network(
                            'https://www.itying.com/images/flutter/4.png',
                            fit: BoxFit.cover,
                          ))
                    ]),
                  ),
                )
              ],
            )
          ],
        ));
  }
}
