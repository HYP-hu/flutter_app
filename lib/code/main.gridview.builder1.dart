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
    return GridView.builder(
        padding: EdgeInsets.all(10),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10.0, //  水平子 Widget之间间距
          mainAxisSpacing: 10.0,
        ),
        itemCount: listData.length,
        itemBuilder: (context, index) {
          return Container(
              child: Column(
                children: <Widget>[
                  Image.network(listData[index]['imageUrl']),
                  SizedBox(height: 10),
                  Text(
                    listData[index]['title'],
                    textAlign: TextAlign.center,
                  )
                ],
              ),
              decoration: BoxDecoration(
                  border: Border.all(
                      color: Color.fromRGBO(233, 233, 233, 0.8), width: 1)));
        });
  }
}
