import 'package:flutter/material.dart';
import 'package:flutter_app/code/listData.dart';

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
    return MiddleWidget();
  }
}

class MiddleWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MiddleState();
  }
}

class MiddleState extends State<MiddleWidget> {
  var _list = listData;
  MiddleState();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
        itemCount: _list.length,
        itemBuilder: (context, index) {
          return Card(
            child: Column(
              children: <Widget>[
                AspectRatio(
                  aspectRatio: 20 / 9,
                  child: Image.network(
                    _list[index]['imageUrl'],
                    fit: BoxFit.cover,
                  ),
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(_list[index]['imageUrl']),
                  ),
                  title: Text(_list[index]['title']),
                  subtitle: Text(
                    _list[index]['author'],
                    overflow: TextOverflow.ellipsis,
                  ),
                )
              ],
            ),
          );
        });
  }
}
