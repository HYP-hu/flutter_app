import 'package:flutter/material.dart';

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
            body: HomeContent()));
  }
}

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Container(
          width: 300,
          height: 300,
          decoration: BoxDecoration(
              color: Colors.yellow,
              // borderRadius: BorderRadius.all(
              //   Radius.circular(150))
              borderRadius: BorderRadius.circular(150),
              image: DecorationImage(
                  image: NetworkImage(
                      "https://tva1.sinaimg.cn/large/006y8mN6gy1g72j6nk1d4j30u00k0n0j.jpg"),
                  fit: BoxFit.cover))),
    );
  }
}
