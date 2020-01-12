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
        title: Text("A Flutter App"),
      ),
      body: HomeContent(),
    ));
  }
}

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
      itemCount: listData.length,
      itemBuilder: (context, index) {
        return ListTile(
          leading: Image.network(listData[index]['imageUrl']),
          title: Text(listData[index]['title']),
          subtitle: Text(listData[index]['author']),
        );
      },
    );
  }
}
