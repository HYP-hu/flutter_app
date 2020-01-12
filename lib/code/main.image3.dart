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
            title: Text('FlutterDemo'),
          ),
          body: HomeContent()),
    );
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
        // padding: EdgeInsets.fromLTRB(60, 0, 60, 0),
        child: Image.network(
          "https://tva1.sinaimg.cn/large/006y8mN6gy1g72j6nk1d4j30u00k0n0j.jpg",
          alignment: Alignment.center,
          color: Colors.blue,
          colorBlendMode: BlendMode.modulate,
          fit: BoxFit.cover,
          // fit: BoxFit.fitWidth,
          // fit: BoxFit.fitHeight,
          // repeat: ImageRepeat.repeatX,
        ),
        decoration: BoxDecoration(color: Colors.yellow),
      ),
    );
  }
}
